class CreateTests < ActiveRecord::Migration[5.1]
  def up
    create_table :tests do |t|
    	t.integer :user_id
    	t.text :test_name

			t.text :widal_test
			t.text :salmonella_typhi_O
			t.text :salmonella_typhi_H
			t.text :widal_result
			t.text :method
			t.text :significant_titre
			t.text :note
			t.text :limitation_of_test
		end
	end

	def down
		remove_column :tests, :user_id
		remove_column :tests, :test_name
	end
end
