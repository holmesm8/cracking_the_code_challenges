dates = [
  "6/4/2020",
  "6/8/2020",
  "6/10/2020",
  "7/17/2020",
  "8/3/2020",
  "8/12/2020",
  "8/14/2020",
  "8/27/2020",
  "9/21/2020",
  "9/28/2020",
  "10/14/2020",
  "10/20/2020",
  "11/12/2020",
  "11/24/2020",
  "12/11/2020"
]

def counter(category, number, dates)
  new_dates = dates.map do |date|
    date.split("/")
  end
  counter = 0
  if category == "month"
    counter = new_dates.count do |date|
      date[0] == number
    end
  elsif category == "day"
    counter = new_dates.count do |date|
      date[1] == number
    end
  else
    counter = new_dates.count do |date|
      date[-1] == number
    end
  end
end


print counter("month", "8", dates)
print counter("day", "8", dates)
print counter("year", "2020", dates)