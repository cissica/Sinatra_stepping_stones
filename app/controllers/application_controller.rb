require './config/environment'
require "pry"
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'secret'
  end

  get "/" do
    @milestones = Milestone.all
    erb :welcome
  end

  helpers do

    def logged_in?
      !!user_logged_in
    end 

    def user_logged_in
      @user_logged_in ||= User.find_by(:email => session[:email]) if session[:email]
    end 

    def login(email, password)
      @user = User.find_by(:email => email)
      if @user && @user.authenticate(password)
        session[:email] = @user.email
      else
        redirect '/login'
      end 
    end 

    def logout
      session.clear 
    end 
    
    end 

end
