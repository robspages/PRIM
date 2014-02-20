class CreateCetegories < ActiveRecord::Migration
  def change
    create_table :cetegories do |t|
      t.string :name
      t.string :catID
      t.string :parentCatID
      t.boolean :isRoot

      t.timestamps
    end
  end
end
