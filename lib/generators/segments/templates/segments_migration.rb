class CreateSegments < ActiveRecord::Migration
  def self.up
    create_table :segments do |t|
      t.string :key, :null => false
      t.string :locale, :null => false
      t.text   :content
    end
    
    add_index :segments, :key, :unique => true
  end
  
  def self.down
    drop_index :segments, :key
    drop_table :segments
  end
  
end
