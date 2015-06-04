json.array!(@cals) do |cal|
  json.extract! cal, :id, :amount, :description, :cals_on
  json.url cal_url(cal, format: :json)
end
