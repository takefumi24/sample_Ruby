name = "Suzuki"
height = 1.6
weight = 60
bmi = (weight / height ** 2 ).round(1)
culc = {name:name, height:height, weight:weight, bmi:bmi}
culc.each do |key, value|
puts "#{key}:#{value}"
end
