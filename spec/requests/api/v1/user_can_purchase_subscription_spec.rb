RSpec.describe 'POST api/v1/subscriptions', type: :request do 
  before do
    post '/api/v1/subscriptions', params: { stripetoken: '123456', email: 'user@mail.com'}
  end

  it 'responds with a success status' do
    expect(response_json).to eq JSON.parse({ status: 'paid'}.to_json)
  end

  it 'creates a subscriptions for a specific user' do
    # check the entry on stripe to have bla bla as email
  end

  it 'Subscription for specific user is a specific subscription plan' do
    # check the entry on stripe to have bla bla as email
  end
end