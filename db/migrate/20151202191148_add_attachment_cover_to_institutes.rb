class AddAttachmentCoverToInstitutes < ActiveRecord::Migration
  def self.up
    change_table :institutes do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :institutes, :cover
  end
end
