class CreateProductAttributes < ActiveRecord::Migration
  def change
    create_table :product_attributes do |t|
      t.integer :product_id
      t.integer :attribute_id
      t.string :locale
      t.string :value

      t.timestamps
    end
  end
end
