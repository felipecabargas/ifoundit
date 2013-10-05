json.array!(@reports) do |report|
  json.extract! report, :status, :type, :description, :age, :size, :height, :contexture, :raza, :colors, :skin, :medical, :med_detail, :sex, :address, :latitude, :longitude, :gmaps
  json.url report_url(report, format: :json)
end
