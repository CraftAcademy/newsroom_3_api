RSpec.describe 'POST api/v1/subscriptions', type: :request do 
  before do
    post '/api/v1/subscriptions', params: { stripetoken: '123456', email: 'user@mail.com'}
  end

  it 'creates a subscriptions for a specific user' do
    expect(response_json).to eq JSON.parse({ status: 'paid'}.to_json)
  end
end