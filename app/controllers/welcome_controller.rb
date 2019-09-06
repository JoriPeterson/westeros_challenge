class WelcomeController < ApplicationController
  def show
    @houses = House.new
  end
end
