class Store::Bigcommerce < Store
  store_accessor :data_json, :webdav_url

  def admin_url
    "#{url}/manage/dashboard"
  end
end
