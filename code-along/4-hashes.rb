# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# Hashes are lists of *key-value pairs*
profile = {
  "name" => "Simon", 
  "location" => "Evanston",
  "status" => "MBA student"
}
puts profile

# Accessing data from the hash
puts profile["name"]

profile["status"] = {"description" => "teaching", "time" => "8:30am"}

# puts profile["status"]["time"]

# More Complex Hashes

timeline = [
  {"status" => "begins teaching", "time" => "8:30am"},
  {"status" => "teaching", "time" => "10:30am"},
  {"status" => "heading home", "time" => "11:30am"}
]

puts timeline[1]["time"]
