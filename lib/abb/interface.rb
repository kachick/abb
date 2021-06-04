# coding: us-ascii
# frozen_string_literal: true

require_relative 'singleton_class'

module Abb
  module Interface
    Abb.methods(false).each do |converter|
      define_method converter do
        Abb.__send__(converter, to_str)
      end
    end
  end
end
