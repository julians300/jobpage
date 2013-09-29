class AddUserSettingsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :company_name,     :string
  	add_column :users, :company_phone,    :string
  	add_column :users, :company_address,  :string
  	add_column :users, :company_city,     :string
  	add_column :users, :company_state,    :string
  	add_column :users, :company_zip,      :string
  	add_column :users, :contact_name,     :string
  	add_column :users, :contact_email,    :string
  	add_column :users, :contact_phone,    :string
  	add_column :users, :enable_subdomain, :boolean
  	add_column :users, :page_subdomain,   :string
  end
end
