class RemoveSettingsFromUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :companyname, :string
    remove_column :users, :contactfirst, :string
    remove_column :users, :contactlast, :string
    remove_column :users, :contactemail, :string
    remove_column :users, :contactphone, :string
    remove_column :users, :address, :string
    remove_column :users, :city, :string
    remove_column :users, :zip, :string
    remove_column :users, :country, :string
    remove_column :users, :state, :string
  end
end
