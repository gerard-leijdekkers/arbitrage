module ApplicationHelper
  def arbitrage_profit(buy, sell, fee)
    "#{((sell - buy) / buy * 100 - fee).round(2)}% (b: #{buy} - s:#{sell})"
  end
end
