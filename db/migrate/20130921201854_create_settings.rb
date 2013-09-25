class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer :user_id
      t.string :page_subdomain
      t.string :company_name
      t.string :company_phone
      t.string :company_name
      t.string :company_address
      t.string :company_city
      t.string :company_state
      t.string :company_zip
      t.string :company_url
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone

      t.timestamps
    end
  end
end
