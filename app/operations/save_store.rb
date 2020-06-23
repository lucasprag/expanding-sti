class SaveStore
  include ::Operation

  attr_accessor :store, :normalized_store

  def initialize(store:, normalized_store:)
    @store = store
    @normalized_store = normalized_store
  end

  def run
    store.update(normalized_store)
  end
end
