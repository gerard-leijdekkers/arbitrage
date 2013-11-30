class Kraken < Exchange
  API = "https://api.kraken.com/0/public/Ticker?pair=XBTLTC"
  
  attr_accessor :buy, :sell
  
  def initialize
    result = JSON.parse(open(API).read)
    
    self.buy  = 1 / result['result']['XXBTXLTC']['b'].first.to_f #bid
    self.sell = 1 / result['result']['XXBTXLTC']['a'].first.to_f #ask
  end

end