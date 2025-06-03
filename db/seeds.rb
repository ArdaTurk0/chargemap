require 'json'

file_path = Rails.root.join('db', 'data', 'cities.json')
cities_data = JSON.parse(File.read(file_path))

cities_data.each do |city|
  City.find_or_create_by(name: city["name"]) do |c|
    c.latitude = city["latitude"]
    c.longitude = city["longitude"]
  end
end

puts "Şehir verileri başarıyla eklendi!"
