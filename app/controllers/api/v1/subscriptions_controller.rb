class Api::V1::SubscriptionsController < ApplicationController
  def create
    render json:{status: 'paid'}
  end
end
