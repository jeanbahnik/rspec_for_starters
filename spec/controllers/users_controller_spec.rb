require 'spec_helper'

describe UsersController do
  describe "user#show" do
    it "returns a 200 when calling the show method" do
      get :show
      response.status.should be(200)
    end
  end

end
