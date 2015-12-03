class AddCategoryToInstitutes < ActiveRecord::Migration
  def change
    add_column :institutes, :category, :string
  end
end
