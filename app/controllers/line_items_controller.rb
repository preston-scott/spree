class LineItemsController < Spree::BaseController

  resource_controller
  
  def destroy
    line_item = LineItem.find(params[:id], :include => :order)
    @order = line_item.order
    line_item.destroy
    @order.update_totals!
    #order.update_line_items!
    after :destroy
    set_flash :destroy
    response_for :destroy
  end
  
  destroy.response do |wants|
    wants.html { redirect_to edit_order_url(@order.number) }
    wants.json { 
        find_order 
        render :template => "orders/edit" 
      }
  end

end
