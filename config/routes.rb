Rails.application.routes.draw do
  root "charge_map#index"

  get 'charge_map/index', to: 'charge_map#index', as: 'charge_map_index'
  get 'charge_map/map', to: 'charge_map#map', as: 'charge_map_map'
  get 'charge_map/info', to: 'charge_map#info', as: 'charge_map_info'
end
