class AddSpecsToJobs < ActiveRecord::Migration
  def change
  	add_column :jobs, :jobskills,       :string
  	add_column :jobs, :joblocation,     :string
  	add_column :jobs, :employmenttype,  :string
  	add_column :jobs, :joblength,       :string
  	add_column :jobs, :payrate,         :string
  	add_column :jobs, :travelrequired,  :string
  end
end
