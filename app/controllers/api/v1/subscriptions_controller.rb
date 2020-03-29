class Api::V1::SubscriptionsController < ApplicationController
  before_action :authenticate_user!
  def create
    customer = Stripe::Customer.list(email: params[:email]).data.first
    customer = Stripe::Customer.create({email: params[:email], source: params[:stripeToken]}) unless customer
    subscription = Stripe::Subscription.create({customer: customer.id, plan: 'year_subscription'})
    status = Stripe::Invoice.retrieve(subscription.latest_invoice).paid
    # binding.pry
    #   if status == true 
    #     current_user.role = 'subscriber'
    #     current_user.save!
    #   end
    render json: { status: (status ? 'paid' : 'not paid') }
  end
end
