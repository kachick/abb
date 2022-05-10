# coding: us-ascii
# frozen_string_literal: true

module Abb
  module Refinements
    refine String do
      import_methods Interface
    end
  end
end
