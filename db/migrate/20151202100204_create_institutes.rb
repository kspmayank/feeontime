class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
      t.text :name
      t.text :address
      t.text :info
      t.text :history
      t.text :admission
      t.text :fees
      t.text :events
      t.text :gallery
      t.text :others
      t.text :logo
      t.text :cover

      t.timestamps null: false
    end
  end
end
