require 'spec_helper'

describe "Users" do
    before { @user = Users.new name: " ", email: "user@example.com" }
    subject { @user }
    it { should respond_to ( :email ) }
end
