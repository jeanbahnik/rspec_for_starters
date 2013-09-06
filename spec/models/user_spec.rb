require 'spec_helper'

describe User do
  before do
    @user = User.new
    @user.first_name = 'John'
    @user.last_name = 'Doe'
  end

  describe "#full_name" do
    it "takes the first name and the last name and returns a space-separated full name" do
      # user = User.new
      # user.first_name = 'John'
      # user.last_name = 'Doe'
      @user.full_name.should == 'John Doe'
    end
  end

  describe "#is_admin?" do
    it "returns false if the user does not have an account_role" do
      # user = User.new
      # user.first_name = 'John'
      # user.last_name = 'Doe'
      @user.is_admin?.should == false
    end
  end

  describe "#is_admin?" do
    it "returns false if the user's account_role is not admin" do
      # user = User.new
      # user.first_name = 'John'
      # user.last_name = 'Doe'
      @user.account_role = 'employee'
      @user.is_admin?.should == false
    end
  end

  describe "#is_admin?" do
    it "returns true if the user's account_role is admin" do
      # user = User.new
      # user.first_name = 'John'
      # user.last_name = 'Doe'
      @user.account_role = 'admin'
      @user.is_admin?.should == true
    end
  end

end