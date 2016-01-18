require 'rails_helper'

RSpec.describe Item, type: :model do

	let(:item) {Item.create!(body: "New Item Body", completed: true)}

	describe "attributes" do
		it "should respond to body" do 
			expect(item).to respond_to(:body)
		end

		it "should return true" do 
			expect(item).to respond_to(:completed)
		end
	end



end
