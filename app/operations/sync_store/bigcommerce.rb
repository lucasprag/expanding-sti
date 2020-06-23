class SyncStore::Bigcommerce < SyncStore
  def get_store_from_api
    # call API and get this result
    { display_name: "My BigCommerce Store"}
  end
end
