def stock_picker(prices)
  profit = 0
  highest_profit = 0
  buy_day = 0
  day_combo = []

  while buy_day < prices.length
    sell_day = buy_day + 1
    while sell_day < prices.length
      profit = prices[sell_day] - prices[buy_day]
      if profit > highest_profit
        highest_profit = profit
        day_combo = [buy_day, sell_day]
      end
      sell_day += 1
    end
    buy_day += 1
  end
  day_combo
end

p stock_picker([47,3,6,9,15,8,6,19,7])