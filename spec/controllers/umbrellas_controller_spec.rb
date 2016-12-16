require 'rails_helper'

RSpec.describe UmbrellasController, type: :controller do
  let(:l1) {Location.create(:name => 'location1')}
  let(:l2) {Location.create(:name => 'location2')}
  let(:u1) {User.create(:email => 'xxx@hotmail.com', :password => '123456')}


  before do
    request.headers['HTTP_TOKEN'] = '123456'
    request.headers['Accept'] = 'application/HTML'
    request.headers['Content-Type'] = 'application/HTML'
  end

  it '#index' do
    get :index
    expect(response.status).to eq(200)
  end

  describe '#borrow' do

  end
end