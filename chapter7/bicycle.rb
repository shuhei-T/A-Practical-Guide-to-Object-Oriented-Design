require './schedulable'
require './schedule'
class Bicycle
  include Schedulable
  attr_reader :schedule, :size, :chain, :tire_size

  # Scheduleを注入し、初期値を設定する
  # def initialize(args={})
  #   @schedule = args[:schedule] || Schedule.new
  #   # ...
  # end

  # 与えられた期間(現在はBicycleに固有)の間、
  # bicycleが利用可能であればtrueを返す
  # def schedulable?(start_date, end_date)
  #   !scheduled?(start_date - lead_days, end_date)
  # end

  # scheduleの答えを返す
  # def scheduled?(start_date, end_date)
  #   schedule.scheduled?(self, start_date, end_date)
  # end

  # bicycleがスケジュール可能となるまでの
  # 準備日数を返す
  def lead_days
    1
  end

  # ...
end

