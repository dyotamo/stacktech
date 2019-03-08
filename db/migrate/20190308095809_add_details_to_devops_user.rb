class AddDetailsToDevopsUser < ActiveRecord::Migration[5.2]
  def change
    add_column :devops_users, :details, :text
  end
end
