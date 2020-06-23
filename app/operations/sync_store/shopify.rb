class SyncStore::Shopify < SyncStore
  def get_store_from_api
    # call API and get this result
    { store_name: "My Shopify Store"}
  end
end
