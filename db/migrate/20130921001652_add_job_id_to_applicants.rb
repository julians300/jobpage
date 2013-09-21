class AddJobIdToApplicants < ActiveRecord::Migration
  def change
  	add_column :applicants, :job_id, :integer
  end
end
