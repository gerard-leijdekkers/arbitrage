class Vircurex < Exchange
  API = "https://vircurex.com/api/get_info_for_1_currency.json?base=LTC&alt=BTC"
  
  attr_accessor :buy, :sell
  
  def initialize
    result = JSON.parse(open(API).read)
    
    # We request LTC_BTC but need BTC_LTC
    self.sell = result["highest_bid"].to_f
    self.buy  = result["lowest_ask"].to_f
  end

end