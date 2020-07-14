class DashboardController < ApplicationController
  def index
      @sales_grouped_by_month = Sale.group("strftime('%m-%Y', date_time)").order(date_time: :asc).order(created_at: :asc).sum(:amount)

      @quantity_sales_by_month = Sale.group("strftime('%m-%Y', date_time)").order(date_time: :asc).order(created_at: :asc).count

      @twelve_month_origin = Sale.group_by_month(:date_time, last: 12).order(:origin).count

      @six_month_origin = Sale.group_by_month(:date_time, last: 6).order(:origin).count

      @three_month_origin = Sale.group_by_month(:date_time, last: 3).order(:origin).count

      @one_month_origin = Sale.group_by_month(:date_time, last: 1).order(:origin).count

      @twelve_month_name = Sale.group(:name).order(:date_time, :asc).count
    end
end
