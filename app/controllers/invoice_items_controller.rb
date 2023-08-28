class InvoiceItemsController < ApplicationController
  def update
    invoice_item = InvoiceItem.find(params[:id])
    invoice_item.update(status: params[:status])
 
    redirect_to merchant_invoice_path(invoice_item.item.merchant.id, invoice_item.invoice.id)
  end
end