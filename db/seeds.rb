include RandomData

10.times do 
	Item.create!(
		body: RandomData.random_sentence,
		completed: random_boolean = [true, false].sample
		)
end

items = Item.all

puts "#{Item.count} items created"