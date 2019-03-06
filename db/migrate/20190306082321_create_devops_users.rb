class CreateDevopsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :devops_users do |t|
      t.references :devop, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
