require 'spec_helper'

describe User do
  describe "#full_name" do
    it "takes a first name and a last name and returns a full name" do
      @user = User.new
      @user.first_name = "Jeff"
      @user.last_name = "Cohen"
      @user.full_name.should == "Jeff Cohen"
    end
  end

    it 'does not have a full name if no first and last name' do
      user = User.new
      user.full_name.should == nil
    end
end