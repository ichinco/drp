require 'spec_helper'

describe "Users" do

    before { @user = Users.new first_name: "fname", last_name: "lastname", email: "user@example.com", password: "a"*12, password_confirmation: "a"*12 }
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
       before { @user.password = nil }
       it { should_not be_valid }
    end 

    describe Users do

      it { should respond_to(:password_confirmation) }
      it { should respond_to(:remember_token) }
      it { should respond_to(:authenticate) }

    end

    describe "Remember token" do
      before { @user.save }
      its(:remember_token){ should_not be_blank }
    end

end
