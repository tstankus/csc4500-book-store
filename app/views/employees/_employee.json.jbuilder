json.extract! employee, :id, :firstName, :lastName, :dateOfBirth, :startDate, :created_at, :updated_at
json.url employee_url(employee, format: :json)
