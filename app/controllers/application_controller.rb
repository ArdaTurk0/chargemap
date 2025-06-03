class ApplicationController < ActionController::Base
  def index
    @stations = OpenChargeService.get_charging_locations
  end
end
