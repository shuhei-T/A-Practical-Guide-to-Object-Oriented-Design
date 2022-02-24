class Schedule
  include Schedulable
  def scheduled?(scheduleable, start_date, end_date)
    puts "This #{scheduleable.class} " +
          "is not scheduled\n" +
          " between #{start_date} and#{end_date}"
    false
  end
end