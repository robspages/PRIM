class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.integer :productType_id
      t.string :shortDescription
      t.string :longDescription
      t.string :upc
      t.string :style_id
      t.string :sku

      t.timestamps
    end
  end
end
