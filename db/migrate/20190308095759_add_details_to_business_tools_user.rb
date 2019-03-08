class AddDetailsToBusinessToolsUser < ActiveRecord::Migration[5.2]
  def change
    add_column :business_tools_users, :details, :text
  end
end
