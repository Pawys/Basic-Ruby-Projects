def stock_picker (stocks)
profit = 0
indexes = Array.new(0)
  stocks.each_with_index do |num, index1|
    stocks.each_with_index do |compare_num, index2|
      next if index1 >= index2
      if compare_num - num > profit
        profit = compare_num - num
        indexes = [index1, index2]
      end
    end
  end
  indexes
end
