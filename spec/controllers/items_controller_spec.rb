require 'rails_helper'
include RandomData
include Devise::TestHelpers

RSpec.describe ItemsController, type: :controller do

  let(:my_item) { Item.create!(body: RandomData.random_sentence, completed: random_boolean = [true, false].sample) }
  let(:my_user) { User.create!(name: RandomData.random_name, email: RandomData.random_email, password: "orangeandapple", password_confirmation: "orangeandapple") }



  # describe "GET #index" do
  #   it "returns http success" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end

  #   it "assigns [my_item] to @items" do 
  #     get :index
  #     expect(assigns(:items)).to eq([my_item])
  #   end
  # end

  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show, {id: my_item.id}
  #     expect(response).to have_http_status(:success)
  #   end

  #   it "renders the #show view" do 
  #     get :show, {id: my_item.id}
  #     expect(response).to render_template :show
  #   end

  #   it "assigns my_item to @item" do 
  #     get :show, {id: my_item.id}
  #     expect(assigns(:item)).to eq(my_item)
  #   end
  # end

  
  # describe "GET new" do 
  #   it "returns http success" do 
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end

  #   it "renders te #new view" do 
  #     get :new
  #     expect(response).to render_template :new
  #   end

  #   it "instantiates @item" do 
  #     get :new
  #     expect(assigns(:item)).not_to be_nil
  #   end
  # end


  describe "POST #create" do
    it "increases the number of Item by 1" do 
      sign_in(my_user)
      expect{post :create, user_id: my_user.id, item: {body: RandomData.random_sentence, completed: random_boolean = [true, false].sample}}.to change(Item,:count).by(1)
    end 

    it "assigns the new item to @item" do 
      sign_in(my_user)
      post :create, user_id: my_user.id, item: {body: RandomData.random_sentence, completed: random_boolean = [true, false].sample}
      expect(assigns(:item)).to eq Item.last
    end

    it "redirects to the new item" do 
      sign_in(my_user)
      post :create, user_id: my_user.id, item: {body: RandomData.random_sentence, completed: random_boolean = [true, false].sample}
      expect(response).to redirect_to user_path(my_user.id)
    end
  end

  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
