class CreateMp3s < ActiveRecord::Migration
  
  def self.up
    create_table :mp3s do |t|
      t.integer :product_id
      t.string :title
      t.string :attachment_file_name
      t.string :attachment_content_type
      t.integer :attachment_file_size
      t.timestamps
    end
    add_index :mp3s, :product_id
  end

  def self.down
    drop_table :mp3s
  end
  
end
