
# If the year is divisible by four we return true. But first we check if its also divisible by 100. If it is we return false. But we need to check if its also divided by 400. If it is, we return true. If its not then we default to false.

class Calender
  attr_reader :date

  def initialize(date)
    @date = date
  end

  def self.leap_year?(year)
    if year < 1751 
      new(Dates.new(year)).julian?
    else
      new(Dates.new(year)).gregorian?
    end
  end

  def gregorian?
    return true if div_by_four_hundred
    return false if div_by_one_hundred
    div_by_four?
  end

  def julian?
    div_by_four?
  end

  # additional exploration
  #def gregorian?
  #  if div_by_four?
  #    if div_by_one_hundred
  #      return true if div_by_four_hundred
  #      return false
  #    else
  #      return true
  #    end
  #  end
  #  false
  #end

  private 

  def div_by_four?
    date.year % 4 == 0
  end
  
  def div_by_one_hundred
    date.year % 100 == 0
  end

  def div_by_four_hundred
    date.year % 400 == 0
  end
end

class Dates
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

p Calender.leap_year?(100) == true
p Calender.leap_year?(1700) == true
puts
p Calender.leap_year?(2016) == true
p Calender.leap_year?(2015) == false
p Calender.leap_year?(2100) == false
p Calender.leap_year?(2400) == true
p Calender.leap_year?(240000) == true
p Calender.leap_year?(240001) == false
p Calender.leap_year?(2000) == true
p Calender.leap_year?(1900) == false
p Calender.leap_year?(1752) == true
p Calender.leap_year?(1) == false
p Calender.leap_year?(400) == true