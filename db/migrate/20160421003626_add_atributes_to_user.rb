class AddAtributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :linkedin, :string
    add_column :users, :role, :integer
    add_column :users, :aboutme, :text
  end
end
