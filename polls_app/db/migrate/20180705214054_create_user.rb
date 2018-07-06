class CreateUser < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username, null: false 
      t.index :username, unique: true 
      t.timestamps
    end
  end
end
