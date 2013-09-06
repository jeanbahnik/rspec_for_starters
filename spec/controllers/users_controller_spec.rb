require 'spec_helper'

describe UsersController do
  describe "user#show" do
    it "returns a 200 when calling the show method" do
      get :show
      response.status.should be(200)
    end

    it "asks the User database to find a user by the id param" do
      User.should_receive(:find_by_id).with('1').and_return('wat')
      get :show, :id => '1'

      assigns[:user].should == 'wat'
    end
  end

  describe 'user#update' do
    before :each do
      @user = User.new
      User.should_receive(:find_by_id).and_return(@user)

      @params = {:id => '1', :user => {:first_name => 'Mr.',
                                      :last_name => 'Teacher'}}
    end

    it 'redirects to the user show page on successful update' do
      @user.should_receive(:update_attributes).and_return(true)

      put :update, @params
      response.should redirect_to(user_path)
    end

    it 're-renders the edit template if update is unsuccessful' do
      @user.should_receive(:update_attributes).and_return(false)

      put :update, @params
      response.should render_template('edit')
    end
  end
end
