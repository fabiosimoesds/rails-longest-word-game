require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters.push(('A'..'Z').to_a.sample)
    end
  end

  def score
    @word = params[:word]
    @letters = params[:letters]
    @start_time = params[:starttime]
  end
end
