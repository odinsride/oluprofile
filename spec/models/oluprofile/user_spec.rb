require 'rails_helper'

describe Oluprofile::User do

  before(:all) do
    @user1 = FactoryBot.create(:op_user)
  end

  it "is valid with valid attributes" do
    expect(@user1).to be_valid
  end

  it "has a unique username" do
    user2 = FactoryBot.build(:op_user, email: "john@gmail.com1")
    expect(user2).to_not be_valid
  end

  it "is not valid without an email" do
    user2 = FactoryBot.build(:op_user, email: nil)
    expect(user2).to_not be_valid
  end

  it "is not valid without a password" do
    user2 = FactoryBot.build(:op_user, password: nil)
    expect(user2).to_not be_valid
  end

  it "must have a password length of at least 8 characters" do
    user2 = FactoryBot.build(:op_user, password: "topsecr")
    expect(user2).to_not be_valid
  end

  it "is not valid without a description" do
    user2 = FactoryBot.build(:op_user, description: nil)
    expect(user2).to_not be_valid
  end

  it "is not valid without a first_name" do
    user2 = FactoryBot.build(:op_user, first_name: nil)
    expect(user2).to_not be_valid
  end

    it "is not valid without a last_name" do
    user2 = FactoryBot.build(:op_user, last_name: nil)
    expect(user2).to_not be_valid
  end

end