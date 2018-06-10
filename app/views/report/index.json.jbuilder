json.reports do
  json.array!(@reports) do |report|
    json.id report.id
    json.patient_name "#{report.patient.first_name} #{report.patient.last_name}"
    json.date report.updated_at
  end
end