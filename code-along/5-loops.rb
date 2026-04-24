# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 5-loops.rb

index = 0 

# Infinite Tacos -> Finite Tacos
loop do
  # stop code
  if index == 5
    break
  end
  puts "tacos!"

  #condition that changes the state
  index = index + 1
end

# Loop through tacos
tacos = ["carnitas", "carne asada", "pollo", "pescado", "tofu"]

index =0

loop do
  # stop code
  if index == tacos.count
    break
  end
  
  taco=tacos[index]
  puts "#{taco} tacos"

  #condition that changes the state
  index = index + 1
end

for flavor in tacos
  puts "#{flavor} tacos?"
end