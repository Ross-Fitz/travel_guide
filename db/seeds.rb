require 'net/http'
require 'json'

url = "http://loclahost:3000/visas"
uri = URI(url)
response = NET::HTTP.get(url)
JSON.parse(response)

aus = Country.create!(name: "Australia")
can = Country.create!(name: "Canada")
jap = Country.create!(name: "Japan")

can.visas.create!(name: "International Experience Canada", information: "This is a test")
can.visas.create!(name: "Express Entry", information: "this is a test")
can.visas.create!(name: "Provincial Nominee Programme", information: "this is a test")