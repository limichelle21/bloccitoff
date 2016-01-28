require 'rails_helper'

RSpec.describe User, type: :model do

	let(:user) {User.create!(name: "Orange", email: "orange@bloc.io", password: "orange423", password_confirmation: "orange423")}
	
	it { should have_many(:items) }

	# it { should validate_presence_of(:name) }
	it { should validate_presence_of(:password) }
	it { should validate_presence_of(:email) }




end
