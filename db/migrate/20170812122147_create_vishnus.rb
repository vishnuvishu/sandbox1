class CreateVishnus < ActiveRecord::Migration
  def change
    create_table :vishnus do |t|
      t.string :name
      t.string :designation
      t.string :company

      t.timestamps null: false
    end
  end
end
