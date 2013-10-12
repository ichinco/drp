require 'spec_helper'

describe "Users" do

    before { @user = Users.new name: " ", email: "user@example.com", password: "areaera" }
    subject { @user }

    describe "Name, email" do
      it { should respond_to ( :email ) }
      it { should respond_to :password }
    end

    describe "with a password that's too short" do
      before { @user.password = @user.password_confirmation = "a" * 5 }
      it { should be_invalid }
    end

    describe "when password is not present" do
       it { should_not be_valid }
    end 
end
