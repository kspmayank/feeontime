class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.string :username
      t.string :password_hash
      t.string :email

      t.timestamps null: false
    end
  end
end
