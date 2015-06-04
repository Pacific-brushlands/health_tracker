json.array!(@weights) do |weight|
  json.extract! weight, :id, :amount, :weighed_on
  json.url weight_url(weight, format: :json)
end
