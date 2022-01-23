require 'rails_helper'

RSpec.describe User, type: :model do
  describe "before save" do
    it "should be save with valid attributes" do
      expect(build(:user)).to be_valid
    end

    it "should not save with email repeated" do
      create(:user)
      expect(build(:user)).to_not be_valid
    end

    it "should not save with blank email" do
      expect(build(:user, email: "")).to_not be_valid
    end

    it "should not save with blank password" do
      expect(build(:user, password: "")).to_not be_valid
    end
  end
end
