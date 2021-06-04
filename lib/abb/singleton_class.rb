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
      str = String.try_convert(str)
      raise ArgumentError unless str

      str = str.strip
      return '' if str == ''

      case str
      when /\s/
        initialism(str)
      else
        "#{str.slice!(0)}#{consonant!(str)}"
      end
    end

    alias_method :abb, :abbreviation
    alias_method :fold, :abbreviation

    private

    # @param str [String]
    # @return [String]
    def vowel!(str)
      str.delete(NOT_VOWELS)
    end

    # @param str [String]
    # @return [String]
    def consonant!(str)
      str.delete(NOT_CONSONANTS)
    end

    # @param str [String]
    # @return [String]
    def initialism(str)
      str.scan(/\b[A-Z]/).join
    end

    alias_method :acronym, :initialism
  end
end
