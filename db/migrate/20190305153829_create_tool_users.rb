class CreateToolUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :tools_users do |t|
      t.references :tool, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
