# coding: us-ascii

module Abb
  module Refinements
    refine String do
      include Interface
    end
  end
end
