class ChargeMapController < ApplicationController
  def map
    @city = params[:city] || "Hepsi"

    if @city == "Hepsi" || @city == "all"
      kordinat = { lat: 39.0, lon: 35 }
      mesafe = 2000
    else
      city_record = City.find_by(name: @city)

      if city_record
        kordinat = { lat: city_record.latitude, lon: city_record.longitude }
        mesafe = 50
      else
        kordinat = { lat: 39.0, lon: 35 }
        #Türkiyenin tüm şarj konumlarını almak için bu mesafe
        mesafe = 2000
      end
    end

    @stations = OpenChargeService.get_charging_locations(
      latitude: kordinat[:lat],
      longitude: kordinat[:lon],
      distance: mesafe
    )
  end

  def info

  end

  def index

  end
end
