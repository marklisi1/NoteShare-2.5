class AddTitleToNotesheets < ActiveRecord::Migration[6.0]
  def change
    add_column :notesheets, :title, :string
  end
end
