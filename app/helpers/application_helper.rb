module ApplicationHelper
  def arbitrage_profit(buy, sell, fee)
    ((sell - buy) / buy * 100 - fee).round(2)
  end
  
  def print_arbitrage_profit(profit, buy, sell)
    "#{profit}% (b:#{(buy * 1000).round(2)}/s:#{(sell * 1000).round(2)})"
  end
end
