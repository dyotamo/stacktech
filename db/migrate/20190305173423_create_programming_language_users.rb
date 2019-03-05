class CreateProgrammingLanguageUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :programming_language_users do |t|
      t.references :programming_language, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
