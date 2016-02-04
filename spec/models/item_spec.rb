require 'rails_helper'

RSpec.describe Item, type: :model do

	let(:user) {User.create!(name: "Orange", email: "orange@bloc.io", password: "orange423", password_confirmation: "orange423")}
	let(:item) {Item.create!(body: "New Item Body", completed: true, user: user)}

	it { should belong_to(:user) }
	it { should validate_presence_of(:body) }
	# it { should validate_presence_of(:completed) }
	it { should validate_length_of(:body).is_at_least(10) }

	it { should validate_presence_of(:user) }

	describe "attributes" do
		it "should respond to body" do 
			expect(item).to respond_to(:body)
		end

		it "should return true" do 
			expect(item).to respond_to(:completed)
		end
	end



end
