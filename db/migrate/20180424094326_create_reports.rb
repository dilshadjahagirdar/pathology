class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
		t.text :user_id
		t.text :patient_id
		t.text :test_ids
		t.text :cost
		t.text :deposite
      	t.timestamps
    end
  end
end
