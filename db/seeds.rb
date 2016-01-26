include RandomData

10.times do 
	Item.create!(
		body: RandomData.random_sentence,
		completed: RandomData.random_boolean,
		)
end

items = Item.all


#user = User.new(email: 'admin@bloccitoff.com', password: 'helloworld', password_confirmation: 'helloworld')
#user.confirm!
#user.save!

10.times do 
	user = User.create!(
		name: RandomData.random_name,
		email: RandomData.random_email,
		password: RandomData.random_sentence
		)
end

users = User.all

puts "Seed finished."
puts "#{Item.count} items created"
puts "#{User.count} users created"