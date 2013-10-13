class AddCompanyDescriptionToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :company_description, :text
  end
end
