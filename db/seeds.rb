aus = Country.create!(name: "Australia")
can = Country.create!(name: "Canada")
jap = Country.create!(name: "Japan")

can.visas.create!(name: "International Experience Canada", information: "Ths is also known as the Work/Holiday visa.")
can.visas.create!(name: "Express Entry", information:"This is for people who have family living in Canada.")
can.visas.create!(name: "Provincial Nominee Programme", information:"This is a type of Express Entry visa where the province i lacking in jobs in your respected career field")