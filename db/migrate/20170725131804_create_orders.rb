class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :address
      t.integer :bicyclepost_id
      t.integer :user_id

      t.timestamps
    end
  end
end
