class AddUserDetail < ActiveRecord::Migration
  def self.up
  add_column :users, :role, :string
  add_column :users, :firstname, :string
  add_column :users, :surname, :string
  add_column :users, :nickname, :string
  add_column :users, :sex, :string
  add_column :users, :age, :integer
  add_column :users, :address, :string
  add_column :users, :email, :string
  add_column :users, :tel, :integer
  end

  def self.down
  remove_column :users, :role
  remove_column :users, :firstname
  remove_column :users, :surname
  remove_column :users, :nickname
  remove_column :users, :sex
  remove_column :users, :age
  remove_column :users, :address
  remove_column :users, :email
  remove_column :users, :tel
  end
end
