require 'rails_helper'

RSpec.describe User, type: :model do
 	describe "Creation" do
	  before(:each) do
	    @user_params = {
	      full_name: "Alexandra Chen",
	      email: "alex@example.com",
	      password: "12341234",
	      password_confirmation: "12341234"
	    }
	  end
	  it "should create the user when all the params are filled" do
	    user = User.create(@user_params)
	    expect(user.id).not_to be_falsy
	  end
	  it "should NOT create a user without a lastname" do
	  	@user_params[:full_name] = "Alexandra"
	    user = User.create(@user_params)
	    expect(user.id).not_to be_truthy
	  end
	  it "should return admin role" do
	  	user = User.create(@user_params)
	  	expect(user.admin).to eq(false)
	  end

	end
end
