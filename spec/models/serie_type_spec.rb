require 'rails_helper'

RSpec.describe SerieType, type: :model do
  it "should be save with valid attributes" do
    expect(build(:serie_type)).to be_valid
  end
end
