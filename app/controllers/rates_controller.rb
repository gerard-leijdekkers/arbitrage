class RatesController < ApplicationController
  def index
    @btc = Btc.new
    @vircurex = Vircurex.new
  end
end
