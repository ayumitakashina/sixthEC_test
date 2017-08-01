class CreateBicyclecategories < ActiveRecord::Migration[5.1]
  def change
    create_table :bicyclecategories do |t|
      t.string :name

      t.timestamps
    end
  end
end
