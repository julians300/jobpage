class AddSubdomainToUser < ActiveRecord::Migration
  def change
  	add_column :users, :subdomain,     :string
  	remove_column :users, :page_subdomain, :string
  end
end