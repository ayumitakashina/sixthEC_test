class CreateBicycleposts < ActiveRecord::Migration[5.1]
  def change
    create_table :bicycleposts do |t|
      t.string :name
      t.integer :value
      t.text :description
      t.string :image
      t.integer :bicyclecategory_id

      t.timestamps
    end
  end
end
