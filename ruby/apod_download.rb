require 'rubygems'
require 'nokogiri' 
require 'open-uri'


apodRoot = "http://apod.nasa.gov/apod/"
if ARGV.empty?
  fileRoot = "./"
else
  fileRoot = ARGV[0]
  if fileRoot[-1] != "/"
    fileRoot += "/"
  end
end

page = Nokogiri::HTML(open("#{apodRoot}astropix.html"))   
links = page.css("a")
path = links[1]["href"]
fileName = path.split("/").last

puts "Saving APOD file to #{fileRoot}#{fileName}" 

File.open(fileRoot + fileName, 'wb') do |fo|
  fo.write open("#{apodRoot}").read 
end

