class InvoicesController < ApplicationController
  def index
    @invoices = Aptible::BillForward::Invoice.all
  end

  def show
    @invoice = Aptible::BillForward::Invoice.find(params[:id])
  end
end