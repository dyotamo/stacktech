class CreateUsersUtilities < ActiveRecord::Migration[5.2]
  def change
    create_table :users_utilities do |t|
      t.references :user, foreign_key: true
      t.references :utility, foreign_key: true

      t.timestamps
    end
  end
end
