class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string :u_name
      t.string :sex
      t.string :age
      t.string :allergy

      t.timestamps
    end
  end
end
