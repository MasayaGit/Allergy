class AddPasswardToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :passward, :string
  end
end
