require 'rails_helper'

RSpec.describe Item, type: :model do

	let(:item) {Item.create!(body: "New Item Body", completed: true)}

	it { should belong_to(:user) }
	it { should validate_presence_of(:body) }
	it { should validate_presence_of(:completed) }
	it { should validate_length_of(:body).is_at_least(10) }

	describe "attributes" do
		it "should respond to body" do 
			expect(item).to respond_to(:body)
		end

		it "should return true" do 
			expect(item).to respond_to(:completed)
		end
	end



end
