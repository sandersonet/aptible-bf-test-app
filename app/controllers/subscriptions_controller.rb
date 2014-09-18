class SubscriptionsController < ApplicationController
  def index
    @subscriptions = Aptible::BillForward::Subscription.all
  end

  def show
    @units = Aptible::BillForward::UnitOfMeasure.all
    @subscription = Aptible::BillForward::Subscription.find(params[:id])
  end

  def create
    @subscription = Aptible::BillForward::Subscription.create(params[:subscription])
  end
end