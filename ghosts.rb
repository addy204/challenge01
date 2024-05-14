# author: Aditya Sharma
# course: Agile Full Stack Web Development
# challenge: 01 Q2
# version: 1.0
# discription: constructs a sting by iterating over each ghost and using sting interpolation

#defines our arrays and hashes
ghosts = [
  { name: 'Inky', age: 4, loves: 'reindeers', net_worth: '25 dollars' },
  { name: 'Pinky', age: 5, loves: 'garden tools', net_worth: '14 dollars' },
  { name: 'Blinky', age: 7, loves: 'ninjas', net_worth: '18.03 dollars' },
  { name: 'Clyde', age: 6, loves: 'yarn', net_worth: '0 dollars' }
]

#iterates through each ghost
ghosts.each do |ghost|
  #constructs a string for ghost info
  ghost_info  = "#{ghost[:name]} is #{ghost[:age]} years old, "
  ghost_info += "loves #{ghost[:loves]} and "
  ghost_info += "has #{ghost[:net_worth]} in the bank."
  puts ghost_info
end
