#Create a method definiton for stock_picker
def stock_picker(prices)
  #Create a variable to store the highest profit thus far
  #Go through each day

#Calculate the difference (profit) between that day and every next day
  profit = 0
  highest_profit = 0
  buy_day = 0
  day_combo = []
  while buy_day < prices.length
    sell_day = buy_day + 1
    while sell_day < prices.length
      profit = prices[sell_day] - prices[buy_day]
      if profit > highest_profit
        #If so, store the profit in one variable
        highest_profit = profit
        #and the best combination of days on another variable
        day_combo = [buy_day, sell_day]
      end
      sell_day += 1
    end
    buy_day += 1
  end

#Check if the combination of days is the highest thus far
  day_combo
#After checking all days, return the combination of days
end

p stock_picker([47,3,6,9,15,8,6,19,7])

#Maybe try it with loops instead of iterators