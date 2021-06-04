# coding: us-ascii
# frozen_string_literal: true

module Abb
  module Refinements
    refine String do
      include Interface
    end
  end
end
