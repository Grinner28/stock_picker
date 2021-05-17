require 'pry'

binding.pry
stocks = [17,3,6,9,15,8,6,1,10]
def stock_picker(stocks)
    profit = 0
    stocks.each_with_index {|buy , index1|
    stocks.each_with_index {|sell , index2|
    sell - buy > profit ? profit = buy - sell : profit #checks if new purchase scheme has higher profit than previous, if so changes profit to next scheme
    }
}

end

puts stock_picker(stocks)
