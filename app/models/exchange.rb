class Exchange
  require 'open-uri'
  require 'json'
  
  attr_accessor :ticker
  
  def fee
    0.2
  end
  
end
