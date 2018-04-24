class AddAttachmentAvatarToShips < ActiveRecord::Migration[5.2]
  def self.up
    change_table :ships do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :ships, :avatar
  end
end
