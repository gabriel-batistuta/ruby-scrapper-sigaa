require "httparty"
require "nokogiri"

response = HTTParty.get("Your teachers link")
html = response.body

doc = Nokogiri::HTML(html)

name = doc.css("h3")[0].text
departament = doc.css("p")[0].text.strip()
description = doc.css("dd")[0].text.strip()
formation = doc.css("dd")[2].text.strip()
lattes = doc.css("dd")[3].text.strip()

puts name
puts departament
puts description
puts formation
puts lattes