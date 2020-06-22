class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :url
      t.string :external_id

      t.timestamps
    end
    add_index :stores, :external_id, unique: true
  end
end
