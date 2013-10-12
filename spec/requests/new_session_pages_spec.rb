require 'spec_helper'

describe "NewSessionPages" do
    before "Visit sessions#new" do
        visit '/sessions/new'
        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "ciaociaociao"
        click_button "Sign in"
    end
    subject { page }
    it { should have_link( 'Create profile', href: '/mentor_profile/create') }
end
