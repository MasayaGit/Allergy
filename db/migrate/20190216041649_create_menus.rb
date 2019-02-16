class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|

      t.string :genre
      t.string :name
      t.integer :price
      t.string :allergy

      t.timestamps
    end
  end
end
