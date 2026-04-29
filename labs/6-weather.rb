# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 6-weather.rb
# EXERCISE
# Given the following Ruby hash that represents weather data,
# write a weather summary out to the screen. Something like this:
# Currently it is 67 degrees and Sunny.
# Forecast for the next 7 days:
# - 65 degres and Mostly Cloudy
# - 70 degrees and Partly Cloudy
# - 62 degrees and Sunny
# - 68 degrees and Sunny
# - 65 degrees and Partly Cloudy with a 70% chance of rain
# - 72 degrees and Partly Cloudy
# - 60 degrees and Rainy
# Note: only display the chance of rain if above 50%.
# Note: do not display the chance of rain if conditions are already rainy.
weather_data = {
  current: {
    temperature: 67,
    conditions: "Sunny"
  },
  forecast: [
    { temperature: 65, conditions: "Mostly Cloudy", precipitation: 0.4 },
    { temperature: 70, conditions: "Partly Cloudy", precipitation: 0.2 },
    { temperature: 62, conditions: "Sunny", precipitation: 0.1 },
    { temperature: 68, conditions: "Sunny", precipitation: 0.1 },
    { temperature: 65, conditions: "Partly Cloudy", precipitation: 0.7 },
    { temperature: 72, conditions: "Partly Cloudy", precipitation: 0.4 },
    { temperature: 60, conditions: "Rainy", precipitation: 0.9 }
  ]
}

'''
My Answer
'''

# Current Weather
puts "Currently it is #{weather_data[:current][:temperature]} and #{weather_data[:current][:conditions]}"

#Forecast Next Week
## Forecasting Header
puts "Forecast for the next 7 days:"
## Forecasting Extracting Data

### Output
for day in weather_data[:forecast]

  if day[:conditions] == "Rainy"
    # No need to display chance of rain
    puts "#{day[:temperature]} degrees and #{day[:conditions]}"
  elsif day[:precipitation] > 0.5
    #display chance of rain
    puts "#{day[:temperature]} degrees and #{day[:conditions]} with #{(day[:precipitation]*100).to_i}% chance of rain"
  else
    puts "#{day[:temperature]} degrees and #{day[:conditions]}"
  end
  
end