def stock_picker(prices)
  # Profit = (Selling Price - Buying price)
  profit = 0
  # Answer variable
  result = []
  #
  min_price = prices[0]
  min_index = 0

  # Goes through the prices array one element at a time
  prices.each_with_index do |price, index|

    # if statement, objective is to find the the lowest price value
    #   and its corresponding index location of the prices array
    if price < min_price
      min_price = price
      min_index = index
    end

    # if statement, objective is to find the highest price value where
    #   you can subtract the previously found price value in the other
    #   if statement, from this highest price value to find the max profit
    if price - min_price > profit
      profit = price - min_price
      result = [min_index, index]
    end
  end
  result
end


p stock_picker([17,3,6,9,15,8,6,1,10])
