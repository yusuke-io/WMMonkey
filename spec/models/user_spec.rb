require 'rails_helper'

RSpec.describe User, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"  
  describe "creation" do
  	before do 
  	  @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Ragnar", last_name: "LothBrok")
    end

    it "can be created" do       
      expect(@user).to be_valid
    end

    it "it cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil

      expect(@user).to_not be_valid
    end
  end
end
