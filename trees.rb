# author: Aditya Sharma
# course: Agile Full Stack Web Development
# challenge: 01 Q4
# version: 1.0
# discription: prints the number of ash trees using the api data set
require 'net/http'
require 'json'
# require 'pp'

# Define the URL for the full tree dataset
url = 'https://data.winnipeg.ca/resource/d3jk-hb6j.json?$limit=306000'
uri = URI(url)
response = Net::HTTP.get(uri)
trees = JSON.parse(response)

# pp trees

#loops through tree data set
ash_tree_count = 0
#checks to see if the common name contains ash
trees.each do |tree|
  #if it contain the ash it increases the count of the ash_tree_count
  if tree['common_name'].to_s.downcase.include?('ash')
    ash_tree_count += 1
  end
end

# number of ash trees found
puts "Number of Ash trees: #{ash_tree_count}"
