#Create a method definiton for stock_picker
def stock_picker(prices)
  #Create a variable to store the highest profit thus far
  #Go through each day

#Calculate the difference (profit) between that day and every next day
  profit = 0
  buy_day = 0
  while buy_day < prices.length
    sell_day = buy_day + 1
    while sell_day < prices.length
      profit = prices[sell_day] - prices[buy_day]
      sell_day += 1
    end
    buy_day += 1
  end


#Check if the combination of days is the highest thus far
  highest_profit = 0

  if profit > highest_profit
    #If so, store the profit in one variable
    highest_profit = profit
    #and the best combination of days on another variable

  end

#After checking all days, return the combination of days
end

p stock_picker([17,3,6,9,15,8,6,1,10])

#Maybe try it with loops instead of iterators