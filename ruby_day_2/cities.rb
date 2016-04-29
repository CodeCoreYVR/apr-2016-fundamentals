cities = {"BC" => ["Vancouver", "Victoria", "Nanaimo"],
          "ON" => ["Toronto", "Ottawa", "Waterloo"],
          "QC" => ["Monteral", "Sherbrooke", "Quebec"]
          }

cities.each do |prov, city_array|
  puts "#{prov}: #{city_array.join(", ")}"
end
