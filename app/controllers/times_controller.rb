class TimesController < ApplicationController
  def index
    session[:counter] = 0 unless session.include?(:counter)
    session[:counter] += 1
    render text: "You visited this url #{session[:counter]} times"
  end

  def restart
    reset_session
    render text: "Destroyed the session"
  end
end
