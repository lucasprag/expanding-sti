class NormalizeStore::Bigcommerce < NormalizeStore
  def run
    # converts BigCommerce's store_hash to a common hash to assign to the model
    { name: store_hash[:display_name] }
  end
end
