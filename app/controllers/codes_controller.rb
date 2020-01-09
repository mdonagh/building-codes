class CodesController < ApplicationController
  def index
    @codes = Code.all
  end
end
