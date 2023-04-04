def stock_picker(arrayOfDays)
  profit = 0
  bestDays = []

  lowestIdx=0
  lowest = arrayOfDays[0]

  arrayOfDays.each_with_index do |day, idx|
    if day < lowest
      lowest = day
      lowestIdx = idx
    end
    if day - lowest > profit
      profit = day - lowest
      bestDays = [lowestIdx, idx]
    end
  end
  return bestDays
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
