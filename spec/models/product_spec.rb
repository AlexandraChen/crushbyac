require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Creation" do
  	before(:each) do
  	 	@user_params = {
	      full_name: "Alexandra Chen",
	      email: "alex@example.com",
	      password: "12341234",
	      password_confirmation: "12341234",
	      admin: true
	    }
	  end

	  it "should create a product" do
		  @product_params = {
		   		title: "Strapless bikini",
		   		price: 90.00,
		   		description: "Strapless top, bikini cut bottom.",
		   		size: "S, M, L"
		   }
	  	user = User.create(@user_params)
	  	user.products.new(@product_params)
	  	expect(user.products.length).to eq(1)
	 	end

	 	it "should not create a product if user is not admin" do
	 	end

 	end
end

