require 'pry'

stocks = [15,17,3,6,9,15,8,6,1,10]
def stock_picker(stocks)
    pick = { #Hash used to store details of the best pick determined so far
        "profit" => 0,
        "sell" => [0],
        "buy" => [0],
    }
    stocks.each_with_index {|buy, index1|
    stocks.slice(index1, stocks.length-1).map {|sell| #Cuts the stocksarray so the first value is omitted as a sell price
    pick["profit"] < sell - buy ? 
    pick = {"sell" =>(stocks.slice(index1, stocks.length-1).index(sell))+index1, 
    "buy" =>stocks.index(buy), "profit" => sell - buy} 
    : pick
    } ## Comparies profit of the current pair to the profit of the maximum deteced so far and if greated stores the new profit value and sell and buy indexes. 
        }    
puts "The best stock pick is to buy at #{[pick["buy"]]} and sell at #{[pick["sell"]]} for a profit of #{pick["profit"]} " 
end

stock_picker(stocks)
