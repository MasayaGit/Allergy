class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :m_name
      t.integer :price
      t.string :allergy
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
