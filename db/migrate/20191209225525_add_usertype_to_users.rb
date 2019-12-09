class AddUsertypeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :usertype, :string
  end
end
