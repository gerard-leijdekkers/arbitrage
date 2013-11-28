class RatesController < ApplicationController
  def index
    @rates = Rates.new.fetch
  end
end
