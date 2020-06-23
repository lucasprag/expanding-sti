class Store::Wix < Store
  def admin_url
    "https://www.wix.com/dashboard/#{external_id}/home"
  end
end
