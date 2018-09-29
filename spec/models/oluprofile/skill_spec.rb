require 'rails_helper'

describe Oluprofile::Skill do
    
  before(:all) do
    @user1 = FactoryBot.create(:op_user)
    @skill1 = FactoryBot.create(:op_skill, user: @user1)
  end

  it "is valid with valid attributes" do
    expect(@skill1).to be_valid
  end

  it "has a unique skill name" do
    skill2 = FactoryBot.build(:op_skill, name: "PL/SQL1", user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid without a name" do
    skill2 = FactoryBot.build(:op_skill, name: nil, user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid without a first_used" do
    skill2 = FactoryBot.build(:op_skill, first_used: nil, user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid if first_used is not a valid year" do
    skill2 = FactoryBot.build(:op_skill, first_used: 20, user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid if first_used is not a valid year" do
    skill2 = FactoryBot.build(:op_skill, first_used: "asf", user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid if first_used is not a valid year" do
    skill2 = FactoryBot.build(:op_skill, first_used: 20181, user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid if last_used is not a valid year" do
    skill2 = FactoryBot.build(:op_skill, last_used: 20, user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid if last_used is not a valid year" do
    skill2 = FactoryBot.build(:op_skill, last_used: "asf", user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid if last_used is not a valid year" do
    skill2 = FactoryBot.build(:op_skill, last_used: 20181, user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid without a proficiency" do
    skill2 = FactoryBot.build(:op_skill, proficiency: nil, user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid if proficiency is not a number 1-5" do
    skill2 = FactoryBot.build(:op_skill, proficiency: 0, user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid if proficiency is not a number 1-5" do
    skill2 = FactoryBot.build(:op_skill, proficiency: 10, user: @user1)
    expect(skill2).to_not be_valid
  end

  it "is not valid if proficiency is not a number 1-5" do
    skill2 = FactoryBot.build(:op_skill, proficiency: "asdf", user: @user1)
    expect(skill2).to_not be_valid
  end

end
