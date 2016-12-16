require 'rails_helper'

describe "umbrella" do
  let(:l1) {Location.create(:name => 'location1')}
  let(:l2) {Location.create(:name => 'location2')}
  let(:u1) {User.create(:email => 'xxx@hotmail.com', :password => '123456')}

  before(:each) do
  end

  it "umbrella location" do
    l1
    l2
    u1
    umb1 = l1.umbrellas.create
    expect(Umbrella.first.umbrella_holder == l1).to eq(true)
  end
end