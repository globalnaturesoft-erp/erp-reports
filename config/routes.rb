Erp::Reports::Engine.routes.draw do
  scope "(:locale)", locale: /en|vi/ do
		namespace :backend, module: "backend", path: "backend/reports" do
      # routes of sales statistic
      get 'sales/report' => 'sales#report', as: :sales_report
      post 'sales/sales_list' => 'sales#sales_list', as: :sales_list
			get 'sales_orders' => 'sales#sales_orders', as: :sales_orders
      # routes of purchase statistic
			get 'purchases/report' => 'purchases#report', as: :purchase_report
      post 'purchases/purchase_list' => 'purchases#purchase_list', as: :purchase_list
      get 'purchase_orders' => 'sales#purchase_orders', as: :purchase_orders
      # routes of salesperson statistic
			get 'salespersons/profits_report' => 'salespersons#profits_report', as: :salesperson_profits_report
      post 'salespersons/profits_list' => 'salespersons#profits_list', as: :salesperson_profits_list
      get 'salespersons/sales_report' => 'salespersons#sales_report', as: :salesperson_sales_report
      post 'salespersons/sales_list' => 'salespersons#sales_list', as: :salesperson_sales_list
      get 'salespersons/sold_report' => 'salespersons#sold_report', as: :salesperson_sold_report
      post 'salespersons/sold_list' => 'salespersons#sold_list', as: :salesperson_sold_list
			get 'sold_details' => 'salespersons#sold_details', as: :sold_details
			get 'sales_details' => 'salespersons#sales_details', as: :sales_details
			# routes of supplier statistic
			get 'suppliers/purchase_report' => 'suppliers#purchase_report', as: :supplier_purchase_report
			post 'suppliers/purchase_list' => 'suppliers#purchase_list', as: :supplier_purchase_list
			get 'suppliers/debt_report' => 'suppliers#debt_report', as: :supplier_debt_report
			post 'suppliers/debt_list' => 'suppliers#debt_list', as: :supplier_debt_list
			get 'suppliers/goods_bought_report' => 'suppliers#goods_bought_report', as: :supplier_goods_bought_report
			post 'suppliers/goods_bought_list' => 'suppliers#goods_bought_list', as: :supplier_goods_bought_list
			get 'supplier_goods_bought_details' => 'suppliers#goods_bought_details', as: :supplier_goods_bought_details
			get 'supplier_purchase_orders' => 'suppliers#purchase_orders', as: :supplier_purchase_orders
			# routes of customer statistic
      get 'customers/sales_report' => 'customers#sales_report', as: :customer_sales_report
      post 'customers/sales_list' => 'customers#sales_list', as: :customer_sales_list
      get 'customers/sales_orders' => 'customers#sales_orders', as: :customer_sales_orders
			get 'customers/profits_report' => 'customers#profits_report', as: :customer_profits_report
      post 'customers/profits_list' => 'customers#profits_list', as: :customer_profits_list
			get 'customers/debts_report' => 'customers#debts_report', as: :customer_debts_report
      post 'customers/debts_list' => 'customers#debts_list', as: :customer_debts_list
      get 'customers/sold_report' => 'customers#sold_report', as: :customer_sold_report
      post 'customers/sold_list' => 'customers#sold_list', as: :customer_sold_list
      get 'customers/sold_details' => 'customers#sold_details', as: :customer_sold_details
      # routes of product statistic
      get 'products/sales_products_report' => 'products#sales_products_report', as: :product_sales_products_report
      post 'products/sales_products_list' => 'products#sales_products_list', as: :product_sales_products_list
      get 'products/sales_of_product' => 'products#sales_of_product', as: :product_sales_of_product
      get 'products/profits_report' => 'products#profits_report', as: :product_profits_report
      post 'products/profits_list' => 'products#profits_list', as: :product_profits_list
      get 'products/stock_report' => 'products#stock_report', as: :product_stock_report
      post 'products/stock_list' => 'products#stock_list', as: :product_stock_list
      get 'products/stock_detail_report' => 'products#stock_detail_report', as: :product_stock_detail_report
      post 'products/stock_detail_list' => 'products#stock_detail_list', as: :product_stock_detail_list
      get 'products/damage_report' => 'products#damage_report', as: :product_damage_report
      post 'products/damage_list' => 'products#damage_list', as: :product_damage_list
      # routes of payment statistic
      
    end
  end
end