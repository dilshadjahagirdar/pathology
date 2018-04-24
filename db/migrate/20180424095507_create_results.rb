class CreateResults < ActiveRecord::Migration[5.1]
  def change
    create_table :results do |t|
    	t.text :user_id
    	t.text :patient_id
    	t.text :report_id
    	t.text :test_id
    	t.text :results
    	t.text :status
    	t.text :unit
    	t.text :cost
      	t.timestamps
    end
  end
end
