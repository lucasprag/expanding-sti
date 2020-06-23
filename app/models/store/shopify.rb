class Store::Shopify < Store
  def admin_url
    "#{url}/admin"
  end
end
