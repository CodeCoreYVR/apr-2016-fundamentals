names = %w(kevin jim john michael)

cap_names = names.map {|name| name.capitalize } 
cap_names = names.map do |name|
              name.capitalize
            end
