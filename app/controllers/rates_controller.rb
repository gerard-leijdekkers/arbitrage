class RatesController < ApplicationController
  def index
    @rates = {}
    @rates['BTC-e']        = Btc.new
    @rates['Vircurex']     = Vircurex.new
    @rates['Bter']         = Bter.new
    @rates['fxbtc']        = Fxbtc.new
    @rates['Cryptsy']      = Cryptsy.new
    @rates['Crypto-trade'] = CryptoTrade.new
    @rates['Kraken']       = Kraken.new
    @rates['Coins-E']      = CoinsE.new
  end
end
