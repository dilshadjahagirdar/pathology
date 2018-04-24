class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
    	t.text :user_id
    	t.text :test_name
    	t.text :minimum_count
    	t.text :maximum_count
    	t.text :unit
    	t.text :cost
			t.timestamps
    end
  end
end
