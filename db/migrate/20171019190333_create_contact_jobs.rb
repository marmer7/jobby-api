class CreateContactJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_jobs do |t|
      t.integer :job_id
      t.integer :contact_id
      t.timestamps
    end
  end
end
