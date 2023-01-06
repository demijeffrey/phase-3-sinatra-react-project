puts "Clearing tables..."

Day.destroy_all
Task.destroy_all
Bill.destroy_all

puts "All clear!"

puts "🌱 Seeding spices..."

# Seed your database here

## Day seeds
sunday = Day.create(name: "Sunday")
monday = Day.create(name: "Monday")
tuesday = Day.create(name: "Tuesday")
wednesday = Day.create(name: "Wednesday")
thursday = Day.create(name: "Thursday")
friday = Day.create(name: "Friday")
saturday = Day.create(name: "Saturday")

##Task seeds
grocery_shopping = Task.create(task_name: "Grocery shooping", day_id: wednesday.id)
oil_change = Task.create(task_name: "Get oil change for car", day_id: saturday.id)
car_wash = Task.create(task_name: "Wash car", day_id: saturday.id)
laundry = Task.create(task_name: "Wash laundry", day_id: sunday.id)
clean_house = Task.create(task_name: "Clean house", day_id: sunday.id)
therapy = Task.create(task_name: "Therapy appointment", day_id: tuesday.id)
date_night = Task.create(task_name: "Date night with husband", day_id: friday.id)
dog_park = Task.create(task_name: "Take dog to park", day_id: saturday.id)
meal_plan = Task.create(task_name: "Plan meals for week", day_id: monday.id)
water_plants = Task.create(task_name: "Water plants", day_id: thursday.id)

##Month day seeds
fourth = MonthDay.create(day: 04)
first = MonthDay.create(day: 01)

##Bill seeds
car = Bill.create(bill_name: "Car payment", amount: 400, month_day_id: fourth.id)
rent = Bill.create(bill_name: "Rent", amount: 1850, month_day_id: first.id)


puts "✅ Done seeding!"
