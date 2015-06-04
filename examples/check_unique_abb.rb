# coding: us-ascii

$VERBOSE = true

require_relative '../lib/abb'

class AbbreviationDomain
  class ConflictError < KeyError; end
  include Enumerable

  def initialize
    @store = {}
  end

  def each(&block)
    @store.each(&block)
  end

  def push(name)
    frozen = name.freeze
    abb = Abb.fold(name).freeze
    already = @store[abb]
    raise ConflictError, "`#{abb}' is already defined!" if already && (already != name)
    @store[abb] = frozen
    name
  end
  alias_method :<<, :push

  def dictionary
    @store.dup
  end
end

domain = AbbreviationDomain.new
domain << 'google'
domain << 'Japan'
domain << 'japan'
p domain.dictionary #=> {"ggl"=>"google", "Jpn"=>"Japan", "jpn"=>"japan"}
p domain.select{|abb, name| /p/.match name } #=> [["Jpn", "Japan"], ["jpn", "japan"]]
domain << 'goooooogle' #=> `ggl' is already defined! (AbbreviationDomain::ConflictError)
