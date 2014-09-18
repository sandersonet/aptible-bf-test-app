class AccountsController < ApplicationController
  def index
    @accounts = Aptible::BillForward::Account.all
  end

  def show
    @account = Aptible::BillForward::Account.find(params[:id])
  end

  def create
    @subscription = Aptible::BillForward::Account.create(params[:account])
  end
end