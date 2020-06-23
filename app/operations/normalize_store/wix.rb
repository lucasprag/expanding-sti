class NormalizeStore::Wix < NormalizeStore
  def run
    # converts Wix's store_hash to a common hash to assign to the model
    { name: store_hash.dig(:site, :displayName) }
  end
end
