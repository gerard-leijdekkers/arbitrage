class RatesController < ApplicationController
  def index
    @rates = {}
    @rates['BTC-e']        = Btc.new rescue nil
    @rates['Vircurex']     = Vircurex.new rescue nil
    @rates['Bter']         = Bter.new rescue nil
    @rates['fxbtc']        = Fxbtc.new rescue nil
    @rates['Cryptsy']      = Cryptsy.new rescue nil
    @rates['Crypto-trade'] = CryptoTrade.new rescue nil
    @rates['Kraken']       = Kraken.new rescue nil
    @rates['Coins-E']      = CoinsE.new rescue nil
  end
end
