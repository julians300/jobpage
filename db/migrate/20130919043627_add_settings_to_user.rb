class AddSettingsToUser < ActiveRecord::Migration
  def change
    add_column :users, :companyname, :string
    add_column :users, :contactfirst, :string
    add_column :users, :contactlast, :string
    add_column :users, :contactemail, :string
    add_column :users, :contactphone, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :zip, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
  end
end
