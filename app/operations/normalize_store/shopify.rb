class NormalizeStore::Shopify < NormalizeStore
  def run
    # converts Shopify's store_hash to a common hash to assign to the model
    { name:  store_hash[:store_name] }
  end
end
