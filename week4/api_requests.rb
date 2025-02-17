require 'net/http'
require 'json'

# url = URI('https://rickandmortyapi.com/api/character/1')
url = URI('https://pokeapi.co/api/v2/pokemon/1') 
response = Net::HTTP.get(url)   # 1. send request, 2. get response
data = JSON.parse(response)   #3. parse the JSON

# pp "Title: #{data['location']}"
# pp "Episode #{data['episode'][20]}"
pp data['stats']


