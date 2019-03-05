class CreateUserUtilities < ActiveRecord::Migration[5.2]
  def change
    create_table :user_utilities do |t|
      t.references :utility, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
