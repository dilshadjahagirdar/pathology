module TestHelper
  class << self
    def mapParameters(params)
      @@test_parameters = Hash.new
      @@test_parameters['test'] = {

          'widal_test':           params[:widal_slide_test][:widal_test],
          'salmonella_typhi_O':   params[:widal_slide_test][:salmonella_typhi_O],
          'salmonella_typhi_H':   params[:widal_slide_test][:salmonella_typhi_H],
          'widal_result':         params[:widal_slide_test][:widal_result],
          'widal_test_method':    params[:widal_slide_test][:widal_test_method],
          'significant_titre':    params[:widal_slide_test][:significant_titre],
          'note':                 params[:widal_slide_test][:note],
          'limitation_of_test':   params[:widal_slide_test][:limitation_of_test],

          'BSL_FPP':              params[:BSL_FPP_test][:BSL_FPP],
          'blood_sugar_fasting':  params[:BSL_FPP_test][:blood_sugar_fasting],
          'blood_sugar_post_prandial': params[:BSL_FPP_test][:blood_sugar_post_prandial],
          'BSL_FPP_method':       params[:BSL_FPP_test][:BSL_FPP_method],

          'blood_sugar_level':    params[:blood_sugar_level_test][:blood_sugar_level],
          'blood_sugar_level_result': params[:blood_sugar_level_test][:blood_sugar_level_result],
          'blood_sugar_level_method': params[:blood_sugar_level_test][:blood_sugar_level_method],

          'renal_function':       params[:renal_function_test][:renal_function],
          'blood_urea_level':     params[:renal_function_test][:blood_urea_level],
          'bun':                  params[:renal_function_test][:bun],
          'sr_creatinine':        params[:renal_function_test][:sr_creatinine],

          'liver_function':       params[:liver_function_test][:liver_function],
          'bilirubin_total':      params[:liver_function_test][:bilirubin_total],
          'bilirubin_direct':     params[:liver_function_test][:bilirubin_direct],
          'bilirubin_indirect':   params[:liver_function_test][:bilirubin_indirect],
          'sgpt':                 params[:liver_function_test][:sgpt],
          'sgot':                 params[:liver_function_test][:sgot],
          'alkaline_phosphatase': params[:liver_function_test][:alkaline_phosphatase],
          'total_protein':        params[:liver_function_test][:total_protein],
          'albumin':              params[:liver_function_test][:albumin],
          'globulin':             params[:liver_function_test][:globulin],

          'serum_electrolytes':   params[:serum_electrolytes_test][:serum_electrolytes],
          'sr_sodium':            params[:serum_electrolytes_test][:sr_sodium],
          'sr_pottasium':         params[:serum_electrolytes_test][:sr_pottasium]


      }

      return @@test_parameters
    end
  end
end
