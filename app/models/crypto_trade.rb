class CryptoTrade < Exchange
  API = "https://crypto-trade.com/api/1/ticker/ltc_btc"
  
  attr_accessor :buy, :sell
  
  def initialize
    result = JSON.parse(open(API).read)
    
    self.buy  = result['data']["min_ask"].to_f
    self.sell = result['data']["max_bid"].to_f
  end

end