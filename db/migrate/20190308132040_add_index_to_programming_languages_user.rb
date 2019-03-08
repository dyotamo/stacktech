class AddIndexToProgrammingLanguagesUser < ActiveRecord::Migration[5.2]
  def change
    add_index :programming_languages_users, [:user_id, :programming_language_id], unique: true, name: "index_programming_languages_user_unique_key"
  end
end
