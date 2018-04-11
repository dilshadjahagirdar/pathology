class CreateTablePatient < ActiveRecord::Migration[5.1]
  def change
    create_table :table_patients do |t|
      t.column :id, :string , :primary_key => true, null: false , :limit => 10000
      t.column :email, :string
      t.column :report_id, :string, :limit => 10000
      t.column :phone_number, :string
      t.column :first_name, :string
      t.column :last_name, :string
      t.timestamps null: false
    end
  end
end
