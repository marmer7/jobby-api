class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :url
      t.string :status
      t.integer :company_user_id
      t.timestamps
    end
  end
end
