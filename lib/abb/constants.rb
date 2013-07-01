# coding: us-ascii

module Abb

  VOWELS      = 'aeiuoAEIUO'.split('').map(&:freeze).freeze
  CONSONANTS  = ([*'b'..'z', *'B'..'Z'] - VOWELS).map(&:freeze).freeze

end