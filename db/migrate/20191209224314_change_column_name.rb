class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :notesheets, :author_id, :user_id
  end
end
