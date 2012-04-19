# Copyright (C) 2012 Kenichi Kamiya

require_relative 'abb/version'

module Abb

  VOWELS      = 'aeiuoAEIUO'.split('').map(&:freeze).freeze
  CONSONANTS  = ([*'b'..'z', *'B'..'Z'] - VOWELS).map(&:freeze).freeze
  
  class << self
    NOT_VOWELS     = "^#{VOWELS.join}".freeze
    NOT_CONSONANTS = "^#{CONSONANTS.join}".freeze
    
    if respond_to? :private_constant
      private_constant :NOT_VOWELS, :NOT_CONSONANTS
    end
    
    def abbreviations(str)
      case str
      when /\s/
        initializm str
      else
        str = str.dup
        
        ''.tap {|ret|
          ret << str.slice!(0)
          ret << consonant(str)
        }
      end
    end
    
    alias_method :abb, :abbreviations
    alias_method :fold, :abbreviations

    def vowel(str)
      str.delete NOT_VOWELS
    end

    def consonant(str)
      str.delete NOT_CONSONANTS
    end

    def initializm(str)
      ''.tap {|ret|
        str.scan(/\b[A-Z]/) do |cap|
          ret << cap
        end
      }
    end
    
    alias_method :acronym, :initializm
    
  end
  
  module Interface

    Abb.methods(false).each do |convertor|
      define_method convertor do
        Abb.__send__ convertor, self.to_str
      end
    end
  
  end

end