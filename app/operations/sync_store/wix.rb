class SyncStore::Wix < SyncStore
  def get_store_from_api
    { site: { displayName: "My Wix Store" } }
  end
end
