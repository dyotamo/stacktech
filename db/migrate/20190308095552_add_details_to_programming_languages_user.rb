class AddDetailsToProgrammingLanguagesUser < ActiveRecord::Migration[5.2]
  def change
    add_column :programming_languages_users, :details, :text
  end
end
