require 'spec_helper'

describe UsersController do
  before :each do
    @user = User.new(:first_name => 'Jeff', :last_name => 'Cohen')
    User.stub(:find_by_id).and_return(@user)
  end

  describe "user#show" do
    it "returns a 200 when calling the show method" do
      get :show
      response.status.should be(200)
    end

    it "assigns the user" do
      get :show, :id => @user.id

      assigns[:user].should == @user
    end
  end

  describe '#update' do
    it "redirects to the user show on a successful udpate" do
      put :update, :user => {:first_name => 'El Jefe', :last_name => "teacher man"}

      @user.should_receive(:update_attributes).and_return(true)

      response.should redirect_to(user_path)
    end
  end
end
