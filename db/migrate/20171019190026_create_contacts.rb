class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :full_name
      t.string :title
      t.date :last_contact
      t.integer :company_user_id
      t.timestamps
    end
  end
end
