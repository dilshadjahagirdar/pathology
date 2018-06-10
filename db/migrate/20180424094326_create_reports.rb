class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
		t.integer :user_id
		t.integer :patient_id
		t.integer :test_id
		t.text :cost
		t.text :deposite
      	t.timestamps
    end
  end
end
