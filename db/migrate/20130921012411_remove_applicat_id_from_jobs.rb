class RemoveApplicatIdFromJobs < ActiveRecord::Migration
  def change
  	remove_column :jobs, :applicant_id, :string
  end
end
