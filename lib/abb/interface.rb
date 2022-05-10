# coding: us-ascii
# frozen_string_literal: true

module Abb
  module Interface
    def abbreviation
      Abb.abbreviation(to_str)
    end

    def abb
      Abb.abb(to_str)
    end

    def fold
      Abb.fold(to_str)
    end
  end
end
