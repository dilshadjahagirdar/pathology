class CreateTests < ActiveRecord::Migration[5.1]
  def up
    create_table :tests do |t|
    	t.integer :user_id
    	t.text :test_name

			t.text :widal_test
			t.text :salmonella_typhi_O
			t.text :salmonella_typhi_H
			t.text :widal_result
			t.text :widal_test_method
			t.text :significant_titre
			t.text :note
			t.text :limitation_of_test

			t.text :BSL_FPP
			t.text :blood_sugar_fasting
			t.text :blood_sugar_post_prandial
			t.text :BSL_FPP_method

			t.text :blood_sugar_level
			t.text :blood_sugar_level_result
			t.text :blood_sugar_level_method

			t.text :renal_function
			t.text :blood_urea_level
			t.text :bun
			t.text :sr_creatinine

			t.text :liver_function
			t.text :bilirubin_total
			t.text :bilirubin_direct
			t.text :bilirubin_indirect
			t.text :sgpt
			t.text :sgot
			t.text :alkaline_phosphatase
			t.text :total_protein
			t.text :albumin
			t.text :globulin

			t.text :serum_electrolytes
			t.text :sr_sodium
			t.text :sr_pottasium



		end
	end

	def down
		remove_column :tests, :user_id
		remove_column :tests, :test_name
	end
end
