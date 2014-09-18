class UsagesController < ApplicationController
  def create
    @usage_session = Aptible::BillForward::UsageSession.find(
      params[:subscription_id], params[:usage_session_id]
    )
    type = @usage_session.uom == 'GB' ? 'Discrete' : 'Temporal'
    @usage_session.create_usage({ usageType: 'Temporal', start: Time.now })
    redirect_to subscription_path id: @usage_session.subscriptionID
  end
end