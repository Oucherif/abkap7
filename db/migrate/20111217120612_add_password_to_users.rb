# Übernommen aus "Ruby on Rails Tutorial" von Michael Hartl
class AddPasswordToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :encrypted_password, :string
  end

  def self.down
    remove_column :users, :encrypted_password
  end
end
