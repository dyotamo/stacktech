class AddDetailsToUsersUtility < ActiveRecord::Migration[5.2]
  def change
    add_column :users_utilities, :details, :text
  end
end
