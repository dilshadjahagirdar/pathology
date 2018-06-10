class Test < ApplicationRecord
  def self.createTest(test_params)
    test_parameters = TestHelper.mapParameters(test_params)
    self.create(test_parameters["test"])
  end

end
