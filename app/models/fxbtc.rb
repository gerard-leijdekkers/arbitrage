class Fxbtc < Exchange
  API = "https://data.fxbtc.com/api?op=query_ticker&symbol=ltc_btc"
  
  attr_accessor :buy, :sell
  
  def initialize
    result = JSON.parse(open(API).read)
    
    # We request LTC_BTC but need BTC_LTC
    self.sell = result["ticker"]["bid"].to_f
    self.buy  = result["ticker"]["ask"].to_f
  end

end