class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.column :user_id, :string
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :email, :string
      t.column :report_id, :string, :limit => 10000
      t.column :phone, :string
      t.column :gender, :string
      t.column :address, :string
      t.column :referred_by, :string
      t.timestamps
    end
  end
end
