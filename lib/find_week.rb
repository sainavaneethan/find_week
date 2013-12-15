require 'date'
require 'time'
require_relative 'modules/day'
require_relative 'modules/month'
require_relative 'modules/week'
require_relative 'modules/year'

class Date
  include FindWeek::Day
  include FindWeek::Month
  include FindWeek::Week
  include FindWeek::Year
end

class Time
  include FindWeek::Day
  include FindWeek::Month
  include FindWeek::Week
  include FindWeek::Year
  
  def leap?
    self.to_date.leap?
  end
end
