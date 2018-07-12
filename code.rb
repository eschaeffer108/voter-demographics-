people = [
  {first_name: "Jon", last_name: "Smith", age: 25, income: 50000, household_size: 1, gender: "male", education: "college" },
  {first_name: "Jane", last_name: "Davies", age: 30, income: 60000, household_size: 3, gender: "female", education: "high school" },
  {first_name: "Sam", last_name: "Farelly", age: 32, income: 80000, household_size: 2, gender: "unspecified", education: "college" },
  {first_name: "Joan", last_name: "Favreau", age: 35, income: 65000, household_size: 4, gender: "female", education: "college" },
  {first_name: "Sam", last_name: "McNulty", age: 38, income: 63000, household_size: 3, gender: "male", education: "college" },
  {first_name: "Mark", last_name: "Minahan", age: 48, income: 78000, household_size: 5, gender: "male", education: "high school" },
  {first_name: "Susan", last_name: "Umani", age: 45, income: 75000, household_size: 2, gender: "female", education: "college" },
  {first_name: "Bill", last_name: "Perault", age: 24, income: 45000, household_size: 1, gender: "male", education: "did not complete high school" },
  {first_name: "Doug", last_name: "Stamper", age: 45, income: 75000, household_size: 1, gender: "male", education: "college"},
  {first_name: "Francis", last_name: "Underwood", age: 52, income: 100000, household_size: 2, gender: "male", education: "college" }

]

total_age = 0
total_income = 0
total_household_size = 0
female = 0
male = 0
unspecified = 0
college = 0
high_school = 0
incomplete_high_school = 0

people.each do |person|
total_age += person[:age]
total_income += person[:income]
total_household_size += person[:household_size]
female += 1 if person[:gender] == "female"
male += 1 if person[:gender] == "male"
unspecified += 1 if person[:gender] == "unspecified"
college += 1 if person[:education] == "college"
high_school += 1 if person[:education] == "high school"
incomplete_high_school += 1 if person[:education] == "did not complete high school"
end


total_size = people.length

puts "Average Age: #{total_age/total_size.to_f}"
puts "Average Income: #{total_income/total_size.to_f}"
puts "Average Household Size: #{total_household_size/total_size.to_f}"
puts "Percent Female: #{female/total_size.to_f * 100}"
puts "Percent Male: #{male/total_size.to_f * 100}"
puts "Percent Unspecified: #{unspecified/total_size.to_f * 100}"
puts "Percent College Grads: #{college/total_size.to_f * 100}"
puts "Percent High School: #{high_school/total_size.to_f * 100}"
puts "Percent Incomplete High School: #{incomplete_high_school/total_size.to_f * 100}"
