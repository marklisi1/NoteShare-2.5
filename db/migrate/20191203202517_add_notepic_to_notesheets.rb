class AddNotepicToNotesheets < ActiveRecord::Migration[6.0]
  def change
    add_column :notesheets, :notepic, :string
  end
end
