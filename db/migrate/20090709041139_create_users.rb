class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string  :login
      t.authenticatable
      t.lockable
      t.recoverable
      t.rememberable
      t.trackable
      
      t.string  :time_zone
      t.integer :invites,               :null => false, :default => 0
      t.boolean :admin,                 :null => false, :default => false
      
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
