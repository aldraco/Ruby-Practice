def max_profit prices
  if prices.length < 2
    raise IndexError, 'Not enough prices to compute'
  end

  min_price = prices[0]
  max_profit = prices[1] - prices[0]

  prices.each do |price, i|
    if i == 0
      continue
    end
    potential_profit = price - min_price
    max_profit = [potential_profit, max_profit].max
    min_price = [min_price, price].min
  end
  return max_profit
end

puts max_profit([17,3,6,9,15,8,6,1,10])