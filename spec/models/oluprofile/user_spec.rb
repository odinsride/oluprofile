require 'rails_helper'

describe Oluprofile::User do

  it "is valid with valid attributes" do
    expect(Oluprofile::User.new).to be_valid
  end

  it "is not valid without a title"
  it "is not valid without a description"
  it "is not valid without a start_date"
  it "is not valid without a end_date"
end