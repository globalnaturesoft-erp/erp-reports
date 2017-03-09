module Erp
  module Reports
    module Backend
      class SalesController < Erp::Backend::BackendController
        
        def sales_list
          # @TODO get date from params, work with timezone
          from_date = Time.now.utc.beginning_of_day - 10.day
          to_date = Time.now.utc.end_of_day
          
          @dates_range = (from_date.to_date..to_date.to_date).to_a
          @orders = Erp::Orders::Order.all_confirmed
                                      .sales_orders
          
          # count total orders
          @order_quantity_total = @orders.get_by_time(from_date, to_date).count
          
          # get total amount
          @order_amount_total = @orders.get_by_time(from_date, to_date).sum(:cache_total)
          
          # Per date satistics
          @dates = []          
          @dates_range.each do |date|
            row = {}
            row[:date] = date
            row[:orders_count] = @orders.get_by_time(date, date).count
            row[:total_amount] = @orders.get_by_time(date, date).cache_total
            
            if row[:orders_count] > 0
              @dates << row
            end
          end
        end
        
        def sales_orders
          @orders = Erp::Orders::Order.sales_orders.search(params)
        end
        
        def end_of_day_report
          records = Erp::Orders::Order.search(params)
          
          @payment_records = records.paginate(:page => params[:page], :per_page => 3)
        end
      end
    end
  end
end
