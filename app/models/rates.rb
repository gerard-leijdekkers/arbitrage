class Rates
  require 'open-uri'
  require 'json'
  
  attr_accessor :btc, :vircurex
  
  def fetch
    btc_api      = "https://btc-e.com/api/2/ltc_btc/ticker"
    vircurex_api = "https://vircurex.com/api/get_info_for_1_currency.json?base=LTC&alt=BTC"
    
    btc      = JSON.parse(open(btc_api).read)
    vircurex = JSON.parse(open(vircurex_api).read)
    
    self.btc      = { buy:  btc["ticker"]["buy"], sell: btc["ticker"]["sell"] }
    self.vircurex = { buy:  vircurex["highest_bid"], sell: vircurex["lowest_ask"] }
    
    self
  end
end