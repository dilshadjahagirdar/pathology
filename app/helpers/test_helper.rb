module TestHelper
  class << self
    def mapParameters(params)
      @@test_parameters = Hash.new
      @@test_parameters['test'] = {

          'widal_test':           params[:widal_slide_test][:widal_test],
          'salmonella_typhi_O':   params[:widal_slide_test][:salmonella_typhi_O],
          'salmonella_typhi_H':   params[:widal_slide_test][:salmonella_typhi_H],
          'widal_result':         params[:widal_slide_test][:widal_result],
          'method':               params[:widal_slide_test][:method],
          'significant_titre':    params[:widal_slide_test][:significant_titre],
          'note':                 params[:widal_slide_test][:note],
          'limitation_of_test':   params[:widal_slide_test][:limitation_of_test],
      }

      return @@test_parameters
    end
  end
end
