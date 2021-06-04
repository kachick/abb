# coding: us-ascii
# frozen_string_literal: true

module Abb
  class << self
    NOT_VOWELS     = "^#{VOWELS.join}".freeze
    NOT_CONSONANTS = "^#{CONSONANTS.join}".freeze

    private_constant :NOT_VOWELS, :NOT_CONSONANTS

    # @param str [String, #to_str]
    # @return [String]
    def abbreviation(str)
      case (str = str.to_str)
      when /\s/
        initialism(str)
      else
        str = str.dup

        (+'').tap { |ret|
          ret << str.slice!(0)
          ret << consonant(str)
        }
      end
    end

    alias_method :abb, :abbreviation
    alias_method :fold, :abbreviation

    # @param str [String, #to_str]
    # @return [String]
    def vowel(str)
      str.to_str.delete(NOT_VOWELS)
    end

    # @param str [String, #to_str]
    # @return [String]
    def consonant(str)
      str.to_str.delete(NOT_CONSONANTS)
    end

    # @param str [String, #to_str]
    # @return [String]
    def initialism(str)
      (+'').tap { |ret|
        str.to_str.scan(/\b[A-Z]/) do |cap|
          ret << cap
        end
      }
    end

    alias_method :acronym, :initialism
  end
end
