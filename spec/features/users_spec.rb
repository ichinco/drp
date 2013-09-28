require 'spec_helper'

describe "Users" do
    describe "Name, email" do
      before { @user = Users.new name: " ", email: "user@example.com",
               password: 'abacadef' }
      subject { @user }
      it { should respond_to ( :email ) }
      it { should respond_to :password }
    end

    describe "when password is not present" do
       before do
          @user = Users.new(
             name: "Example User", email: "user@example.com",
                password: 'abacadef')
       end
       subject{ @user }
       it { should_not be_valid }
    end 
end
