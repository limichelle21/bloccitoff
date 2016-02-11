include Faker
include RandomData

5.times do 
	user = User.create!(
		name: Faker::Name.name,
		email: Faker::Internet.email,
		password: Faker::Internet.password(10,20)
		)
end

users = User.all

10.times do 
	Item.create!(
		body: Faker::Lorem.sentence,
		completed: RandomData.random_boolean,
		user: users.sample
		)
end

items = Item.all


#user = User.new(email: 'admin@bloccitoff.com', password: 'helloworld', password_confirmation: 'helloworld')
#user.confirm!
#user.save!


puts "Seed finished."
puts "#{Item.count} items created"
puts "#{User.count} users created"