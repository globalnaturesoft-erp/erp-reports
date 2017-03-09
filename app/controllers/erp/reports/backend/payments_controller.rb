module Erp
  module Reports
    module Backend
      class PaymentsController < Erp::Backend::BackendController
        
        # GET /payments
        def report
          records = Erp::Payments::PaymentRecord.search(params)
          
          # Total received / end of day report
          @end_of_day_received = records.all_received(Time.now.beginning_of_day, Time.now.end_of_day).received_amount
          
          # Total paid / end of day report
          @end_of_day_paid = records.all_paid(Time.now.beginning_of_day, Time.now.end_of_day).paid_amount
          
          # End of day report
          @end_of_day_report = records.remain_amount(Time.now.beginning_of_day, Time.now.end_of_day) #  params[from_date] && params[:to_date]
          
          @payment_records = records.paginate(:page => params[:page], :per_page => 3)
        end
        
      end
    end
  end
end
