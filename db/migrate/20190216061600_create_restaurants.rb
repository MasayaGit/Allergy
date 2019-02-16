class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :r_name
      t.string :address
      t.string :genre

      t.timestamps
    end
  end
end
