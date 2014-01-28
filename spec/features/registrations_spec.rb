require 'spec_helper'
include Warden::Test::Helpers
module RequestHelpers
  def create_logged_in_user
    user = Factory(:user)
    login(user)
    user
  end

  def login(user)
    login_as user, scope =>:user
  end
end

describe "User Session" do
  let(:auth_user) { create_logged_in_user}


describe "User Registration" do
  before do
    visit root_path
    within('.navbar') { click_link('Sign up') }
  end

  context "failure" do
    before do
      # try to sign up without an email
    end

    it "displays an error message" do
      pending
    end

    it "shows the correct navigation links" do
      # should still see 'Sign in' and 'Sign up'
      # should not see 'Profile' or 'Sign out'
      pending
    end
  end

  context "success" do
    before do
      #visit user_setting_path(authed_user)
      # sign up successfullya
      
     end
    end

    it "displays a welcome message" do
    end

    it "shows the correct navigation links" do
      # should not see 'Sign in' and 'Sign up'
      # should see 'Profile' or 'Sign out'
      pending
    end
  end
end

