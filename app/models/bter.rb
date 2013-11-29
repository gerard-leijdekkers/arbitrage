class Bter < Exchange
  API = "https://bter.com/api/1/ticker/ltc_btc"
  
  attr_accessor :buy, :sell
  
  def initialize
    result = JSON.parse(open(API).read)
    
    self.buy  = result["buy"].to_f
    self.sell = result["sell"].to_f
  end

end