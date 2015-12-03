class AddPaylinkToInstitutes < ActiveRecord::Migration
  def change
    add_column :institutes, :paylink, :string
  end
end
