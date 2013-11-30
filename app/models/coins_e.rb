class CoinsE < Exchange
  API = "https://www.coins-e.com/api/v2/market/LTC_BTC/depth/"
  
  attr_accessor :buy, :sell
  
  def initialize
    result = JSON.parse(open(API).read)
    
    self.buy  = result["ask"].to_f
    self.sell = result["bid"].to_f
  end
end