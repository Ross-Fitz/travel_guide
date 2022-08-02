aus = Country.create!(name: "Australia")
can = Country.create!(name: "Canada")
jap = Country.create!(name: "Japan")

can.visas.create!(name: "International Experience Canada", :information: "this is a test")
can.visas.create!(name: "Express Entry")
can.visas.create!(name: "Provincial Nominee Programme")