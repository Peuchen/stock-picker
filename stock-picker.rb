#Create a method definiton for stock_picker
def stock_picker(prices)
#Go through each day
highest_profit = 0
  prices.each_with_index do | price, idx |
    i = idx + 1
    loop do
      require 'pry'; binding.pry
      profit = prices[i] - price
      if profit > highest_profit
        highest_profit = profit
        best_days = [idx, i]
      end
      i += 1
    end
  end
end
#Calculate the difference (profit) between that day and every next day
#Check if the combination of days is the highest thus far
#If so, store the combination of days in one variable and the profit in another variable
#After checking all days, return the combination of days

p stock_picker([17,3,6,9,15,8,6,1,10])

#Maybe try it with loops instead of iterators