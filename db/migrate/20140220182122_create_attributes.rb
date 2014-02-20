class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.string :name
      t.integer :attributeType_id
      t.boolean :isLocalizable

      t.timestamps
    end
  end
end
