class HomeController < ApplicationController
  def index
    @rover = Rover.new
    @rovers = Rover.all
  end
end