require 'pry'

stock_prices = [10, 7, 5, 8, 11, 9]

def get_max_profit(stock_prices)
  min = stock_prices[0]
  profit = stock_prices[1] - min

  stock_prices.each do |current_price|
    new_profit = current_price - min
    if new_profit > profit
      profit = new_profit
    end
    if stock_prices.length > 1
      require 'pry'; binding.pry
      stock_prices.shift
      get_max_profit(stock_prices)
    else
     return profit
    end
  end
end

print(get_max_profit(stock_prices))