include RandomData

10.times do 
	Item.create!(
		body: RandomData.random_sentence,
		completed: RandomData.random_boolean,
		)
end

items = Item.all

puts "#{Item.count} items created"


user = User.new(email: 'admin@bloccitoff.com', password: 'helloworld', password_confirmation: 'helloworld')
user.confirm!
user.save!