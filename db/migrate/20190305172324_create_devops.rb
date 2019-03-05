class CreateDevops < ActiveRecord::Migration[5.2]
  def change
    create_table :devops do |t|
      t.string :name

      t.timestamps
    end
  end
end
