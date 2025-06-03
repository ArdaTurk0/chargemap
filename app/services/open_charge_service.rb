class OpenChargeService
  def self.get_charging_locations(latitude:, longitude:, distance: 100)
    url = "https://api.openchargemap.io/v3/poi/?output=json&countrycode=TR&maxresults=2000&compact=true&verbose=false&latitude=#{latitude}&longitude=#{longitude}&distance=#{distance}&distanceunit=KM"
    
    headers = {
      "X-API-Key--" => "b5148ec5-0f4d-44dc-8d56-81a225ee1df1"
    }

  response = HTTParty.get(url, headers: headers)
  JSON.parse(response.body)
  end
end
