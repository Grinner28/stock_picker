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
    pick["profit"] < sell - buy ? pick = {"sell" =>stocks.index(sell), "buy" =>stocks.index(buy), "profit" => sell - buy} : pick
    }
        }    
puts "The best stock pick is to buy at #{[pick["buy"]]} and sell at #{[pick["sell"]]} for a profit of #{pick["profit"]} " 
end

stock_picker(stocks)
