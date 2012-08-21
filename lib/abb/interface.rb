require_relative 'singletonclass'

module Abb

  module Interface

    Abb.methods(false).each do |converter|
      define_method converter do
        Abb.__send__ converter, to_str
      end
    end
  
  end

end