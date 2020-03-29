RSpec.describe 'POST api/v1/subscriptions', type: :request do 
  before do
    post '/api/v1/subscriptions', params: { stripetoken: 'tok_1GS3I6ETcp1r6Abv4TDXt2Nx', email: 'karlmarx2@mail.com'}
  end

  it 'responds with a success status' do
    expect(response_json).to eq JSON.parse({ status: 'paid'}.to_json)
  end

  it 'creates a customer on Stripe' do
    expect(Stripe::Customer.list.data.first.email).to eq 'karlmarx2@mail.com'
  end

  it 'creates a subscriptions for a specific user' do
    expect(Stripe::Customer.list(email: 'karlmarx2@mail.com').first.subscriptions).to be_truthy
  end

  it 'Subscription for specific user is a specific subscription plan' do
    expect(Stripe::Customer.list(email: 'karlmarx2@mail.com').first.subscriptions.first.plan.id).to eq 'year_subscription'
  end

  # it 'Changes user role to subscriber' do
  #   expect(current_user.role).to eq 'subscriber'
  # end
end