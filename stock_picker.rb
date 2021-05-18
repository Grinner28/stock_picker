require 'pry'

stocks = [17,3,6,9,15,8,6,1,10]
def stock_picker(stocks)
    pick = {
        "profit" => 0,
        "sell" => [0],
        "buy" => [0],
    }
    stocks.each_with_index {|buy, index1|
    stocks.slice(index1, stocks.length-1).map {|sell|
    pick["profit"] < sell - buy ? pick = {"sell" =>sell, "buy" =>buy, "profit" => sell - buy} : pick
    }
    puts pick
}
end

stock_picker(stocks)
