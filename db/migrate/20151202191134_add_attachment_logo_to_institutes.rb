class AddAttachmentLogoToInstitutes < ActiveRecord::Migration
  def self.up
    change_table :institutes do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :institutes, :logo
  end
end
