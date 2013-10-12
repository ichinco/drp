require 'spec_helper'

describe "Authentication" do
  describe "signin" do
  before { visit '/signin' }
    # before { @user = Users.new name: " ", email: "user@example.com", password: "areaera" }
    before do
        fill_in "Email", with: 'user@example.com'
        fill_in "Password", with: 'areaera'
        click_button "Sign in"
    end
    it { should have_title 'aba' }
  end
end
