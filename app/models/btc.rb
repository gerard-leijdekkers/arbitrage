class Btc < Exchange
  
  def initialize
    self.ticker = Btce::Ticker.new "ltc_btc"
  end
  
  def buy
    ticker.buy.to_f
  end
  
  def sell
    ticker.sell.to_f
  end
end