require 'rails_helper'

RSpec.describe UsersController, type: :controller do

let(:my_user) { User.create!(name: RandomData.random_name, email: RandomData.random_email, password: "orangeandapple", password_confirmation: "orangeandapple") }


  describe "GET #show" do
    it "returns http success" do
   	  sign_in(my_user)
      get :show, id: my_user.id
      expect(response).to have_http_status(:success)
    end
  end



end
