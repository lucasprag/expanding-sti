class SyncStore
  include ::Operation

  attr_accessor :store

  def initialize(store:)
    @store = store
  end

  def run
    normalized_store = NormalizeStore.run(store: store, store_hash: get_store_from_api)

    SaveStore.run(store: store, normalized_store: normalized_store)
  end

  def get_store_from_api
    raise NotImplementedError
  end
end
