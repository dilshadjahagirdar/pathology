class Report < ApplicationRecord
  has_one :patient, :foreign_key => "report_id"
end
