# coding: us-ascii
# frozen_string_literal: true

# abb - Generate abbreviations from words

# Copyright (C) 2012 Kenichi Kamiya

module Abb
  VOWELS      = 'aeiuoAEIUO'.chars.map(&:freeze).freeze
  CONSONANTS  = ([*'b'..'z', *'B'..'Z'] - VOWELS).map(&:freeze).freeze
end

require_relative 'abb/version'
require_relative 'abb/singleton_class'
require_relative 'abb/interface'
require_relative 'abb/refinements'
