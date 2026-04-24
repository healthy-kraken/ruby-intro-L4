# connect to the Blockchain.com Exchange Rates API
# DON'T CHANGE THIS CODE
# ----------------------
require "net/http"
require "json"
url = "https://blockchain.info/ticker"
uri = URI(url)
response = Net::HTTP.get(uri)
bitcoin_data = JSON.parse(response)
# ----------------------

# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# EXERCISE
# Ask the user for the current amount of Bitcoin that they own.
# Using the Ruby hash `bitcoin_data`, display a summary of
# Bitcoin data for the user. Something similar to the sample
# output in step 4 below.

# 1. Get input from a user using gets.chomp
puts "How much bitcoin do you have? (enter any numerical value)"
bitcoin = gets.chomp

# 2. The value will be a string, so you'll want to convert it to a Float
bitcoin = bitcoin.to_f

# 3. Inspect the bitcoin_data hash
btc_usd_ratio = bitcoin_data["USD"]["last"]
bitcoin_worth = bitcoin * btc_usd_ratio



# 4. Display the value of the user's bitcoin
# Sample output:
# puts "1 Bitcoin is valued at $41405.1046 USD."
# puts "Your Bitcoin is worth $62107.6569."

# initial command for collecting data 
puts "Users Bitcoin Worth: #{bitcoin} BTC"
puts "1 Bitcoin is values at $#{btc_usd_ratio}"
puts "Your Bitcoin is worth $#{bitcoin_worth.round(2)}"