
json.redirect_to "new_report.html"

json.report do
  json.report_id @report.id
  json.patient_id @report.patient_id
  # json.test_id @report.test_id
  json.test do
    json.widal_slide_test do
      json.widal_test @test.widal_test
      json.salmonella_typhi_O @test.salmonella_typhi_O
      json.salmonella_typhi_H @test.salmonella_typhi_H
      json.widal_result @test.widal_result
      json.widal_test_method @test.widal_test_method
      json.significant_titre @test.significant_titre
      json.note @test.note
      json.limitation_of_test @test.limitation_of_test
    end

    json.BSL_FPP_test do
      json.BSL_FPP @test.BSL_FPP
      json.blood_sugar_fasting @test.blood_sugar_fasting
      json.blood_sugar_post_prandial @test.blood_sugar_post_prandial
      json.BSL_FPP_method @test.BSL_FPP_method
    end

    json.blood_sugar_level_test do
      json.blood_sugar_level @test.blood_sugar_level
      json.blood_sugar_level_result @test.blood_sugar_level_result
      json.blood_sugar_level_method @test.blood_sugar_level_method
    end

    json.renal_function_test do
      json.renal_function @test.renal_function
      json.blood_urea_level @test.blood_urea_level
      json.bun@test.bun
      json.sr_creatinine @test.sr_creatinine
    end

    json.liver_function_test do
      json.liver_function @test.liver_function
      json.bilirubin_total @test.bilirubin_total
      json.bilirubin_direct @test.bilirubin_direct
      json.bilirubin_indirect @test.bilirubin_indirect
      json.sgpt @test.sgpt
      json.sgot @test.sgot
      json.alkaline_phosphatase @test.alkaline_phosphatase
      json.total_protein @test.total_protein
      json.albumin @test.albumin
      json.globulin @test.globulin
    end

    json.serum_electrolytes_test do
      json.serum_electrolytes @test.serum_electrolytes
      json.sr_sodium @test.sr_sodium
      json.sr_pottasium @test.sr_pottasium
    end
  end
end

