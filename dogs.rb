# author: Aditya Sharma
# course: Agile Full Stack Web Development
# challenge: 01 Q3
# version: 1.0
# discription:  fetches data about dog breeds and prints the bread and subbreed

require 'net/http'
require 'json'
require 'pp'

url = 'https://dog.ceo/api/breeds/list/all'
uri = URI(url)
response = Net::HTTP.get(uri)
dog_breeds = JSON.parse(response)
pp dog_breeds # pp stands for pretty print.

dog_breeds['message'].each do |breed, sub_breeds|
  puts "* #{breed.capitalize}"
  sub_breeds.each do |sub_breed|
    puts "  * #{sub_breed.capitalize}"
  end
end
