class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
    	t.text :user_id
    	t.text :name
    	t.text :min_range
    	t.text :max_range
    	t.text :unit
    	t.text :cost
      	t.timestamps
    end
  end
end
