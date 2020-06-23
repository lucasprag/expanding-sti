class NormalizeStore
  include ::Operation

  attr_accessor :store, :store_hash

  def initialize(store:, store_hash:)
    @store = store
    @store_hash = store_hash
  end

  def run
    raise NotImplementedError
  end
end
