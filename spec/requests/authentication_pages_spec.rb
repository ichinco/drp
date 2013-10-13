require 'spec_helper'

describe "Authentication" do
  describe "signin" do
    before do 
       visit '/signin'
    end

    # before { @user = Users.new name: " ", email: "user@example.com", password: "areaera" }
    before do
       fill_in "Email", with: 'user@example.com'
       fill_in "Password", with: 'ciaociaociao'
       click_button "Sign in"
    end

    subject { page }
    it { should have_title ("Drp") }

#  describe "Home page" do

#    it "should have the content 'Sample App'" do
#      visit '/signin'
#      expect(page).to have_title('Drp')
#    end
#  end
   end
end
