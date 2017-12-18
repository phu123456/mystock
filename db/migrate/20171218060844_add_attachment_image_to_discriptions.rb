class AddAttachmentImageToDiscriptions < ActiveRecord::Migration[5.1]
  def self.up
    change_table :discriptions do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :discriptions, :image
  end
end
