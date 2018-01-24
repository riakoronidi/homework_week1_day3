p "....This is the start of exercise A....."
#A
stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

#1. Add "Edinburgh Waverley" to the end of the array
stops.push("Edinburgh Waverley")

#2. Add "Glasgow Queen St" to the start of the array
stops.unshift("Glasgow Queen St")

#3.Add "Polmont" at the appropriate point (between "Falkirk High" and "Linlithgow")
stops.insert(4,"Polmont")
p stops
#4. Work out the index position of "Linlithgow"
p "This is the position for stop " + stops[5]

#5. Remove "Livingston" from the array using its name
stops.delete ("Livingston")

#6. Delete "Cumbernauld" from the array by index
stops.delete_at(2)
p stops

#7. How many stops there are in the array?
p "The stops are: #{stops.count}"

#8. How many ways can we return "Falkirk High" from the array?

#one way
p "First way to print stop #{stops[2]}"

#second way
for falkirk_stop in stops
  if falkirk_stop == "Falkirk High"
  p "Second way to print stop #{falkirk_stop}"
  end
end

#9. Reverse the positions of the stops in the array
p "Below are the srops in reverse #{stops.reverse!}"


#10. Print out all the stops using a for loop
p "These are all the stops in the array: "
for stop in stops
  p stop
end


p ".....This is the start of exercise B....."
#B
users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }

#1. Get Jonathan's Twitter handle (i.e. the string "jonnyt")
p users["Jonathan"][:twitter]

#2.Get Erik's hometown
p users["Erik"][:home_town]

#3.Get the array of Erik's favourite numbers
p users["Erik"][:favourite_numbers]

#4.Get the type of Avril's pet Colin
p users["Avril"][:pets]["colin"]

#5.Get the smallest of Erik's favourite numbers
p users["Erik"][:favourite_numbers].min()

#6.Add the number 7 to Erik's favourite numbers
new_users = users["Erik"][:favourite_numbers]
new_users.push(7)
p users["Erik"][:favourite_numbers]

#7.Change Erik's hometown to Edinburgh
users["Erik"][:home_town] = "Edinburgh"
p users["Erik"][:home_town]

#8.Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets]["Fluffy"] = :dog
p users["Erik"][:pets]

#9.Add yourself to the users hash
users["Ria"] = {}
p users


p ".....This is the start of exercise C....."
#C
united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]


#1. Change the capital of Wales from "Swansea" to "Cardiff".
def change_capital(wales_array, name)
  for capital in wales_array
    if capital[:capital] == name
    capital[:capital] = "Cardiff"
    end
  end
end
p change_capital(united_kingdom, "Swansea")


#2. Create a Hash for Northern Ireland and add it to the united_kingdom array (The capital is Belfast, and the population is 1,811,000).
united_kingdom.push(:name=>"Northern Ireland", :population=>1811000, :capital=>"Belfast")
p united_kingdom
#i will work on this tomorrow to add a Hash and then merge the two together

#3. Use a loop to print the names of all the countries in the UK.
p "Below is the name of all the countries in the UK: "
for countries in united_kingdom
  p countries[:name]
end

#4. Use a loop to find the total population of the UK.

def sum_population(total_array)
  total = 0
  for sum in total_array
    total += sum[:population]
  end
  return total
end
p "Total population of the UK is: #{sum_population(united_kingdom)}"
