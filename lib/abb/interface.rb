# coding: us-ascii
# frozen_string_literal: true

module Abb
  module Interface
    Abb.public_methods(false).each do |converter|
      define_method converter do
        Abb.public_send(converter, to_str)
      end
    end
  end
end
