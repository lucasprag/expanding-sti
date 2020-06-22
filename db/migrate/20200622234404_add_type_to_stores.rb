class AddTypeToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :type, :string
    add_column :stores, :data_json, :jsonb, default: "{}"
  end
end
