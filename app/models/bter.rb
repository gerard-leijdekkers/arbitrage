class Bter < Exchange
  API = "https://bter.com/api/1/ticker/ltc_btc"
  
  attr_accessor :buy, :sell
  
  def initialize
    result = JSON.parse(open(API).read)
    
    # We request LTC_BTC but need BTC_LTC
    self.buy  = result["sell"].to_f
    self.sell = result["buy"].to_f
  end

end