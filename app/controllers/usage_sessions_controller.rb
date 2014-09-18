class UsageSessionsController < ApplicationController
  def create
    @subscription = Aptible::BillForward::Subscription.find(
      params[:subscription_id]
    )

    @subscription.create_usage_session(uom: params[:uom])
    redirect_to subscription_path(id: @subscription.id)
  end

  def update
    session = {
      sessionID: params[:id],uom: params[:uom],
      subscriptionID: params[:subscription_id]
    }
    Aptible::BillForward::UsageSession.stop session
    redirect_to subscription_path(id: params[:subscription_id])
  end
end