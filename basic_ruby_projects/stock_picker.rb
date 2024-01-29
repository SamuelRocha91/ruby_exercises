#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
require 'pry-byebug'

def stock_picker(stock_prices)
    day_buy = 0
    day_sale = 0
    profit = 0
    stock_prices.each_with_index do |price, index|
        (index + 1..stock_prices.length - 1).each do |index_2|
           price_2 = stock_prices[index_2]
           subtraction = price_2 - price
           if subtraction.positive? && subtraction > profit
              day_buy = index
              day_sale = index_2
              profit = subtraction
           end
        end
    end
    [day_buy, day_sale]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
# [1,4]  # for a profit of $15 - $3 == $12