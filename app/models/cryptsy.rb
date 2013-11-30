class Cryptsy < Exchange
  API = "http://pubapi.cryptsy.com/api.php?method=singlemarketdata&marketid=3"
  
  attr_accessor :buy, :sell
  
  def initialize
    result = JSON.parse(open(API).read)
    
    sellorders = result["return"]["markets"]["LTC"]["sellorders"]
    buyorders  = result["return"]["markets"]["LTC"]["buyorders"]
    
    self.buy  = sellorders.min { |a, b| a["price"] <=> b["price"] }['price'].to_f
    self.sell = buyorders.max  { |a, b| a["price"] <=> b["price"] }['price'].to_f
  end

end