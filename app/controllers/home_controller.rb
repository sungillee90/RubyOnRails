class HomeController < ApplicationController
  def index
  end

  def hi
    @show_message = true
    @message = "run away!"
  end
end
