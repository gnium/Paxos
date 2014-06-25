require 'spec_helper'

describe AdminsController do

  before (:each) do
    @admin = FactoryGirl.create(:admin)
    sign_in @admin
  end

  describe "GET 'show'" do
    
    it "should be successful" do
      get :show, :id => @admin.id
      response.should be_success
    end
    
    it "should find the right admin" do
      get :show, :id => @admin.id
      assigns(:admin).should == @admin
    end
    
  end

end
