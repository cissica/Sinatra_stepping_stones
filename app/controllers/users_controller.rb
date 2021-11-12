require "pry"
class UsersController < ApplicationController

  get '/signup' do 
    erb :"users/signup"
  end

  post '/signup' do 
    @user = User.new
    @user.username = params[:username]
    @user.email = params[:email]
    @user.password = params[:password]
    @user.occupation = params[:occupation]
      if @user.save 
        redirect '/login'
      else 
        @error = @user.errors.messages.first.join(" ")
        erb :"users/signup"
      end 
  end 

  get '/userhome' do 
    @milestones = user_logged_in.milestones
    erb :"users/userhome"
  end 

  get '/profile' do 
    @user = user_logged_in
    erb :"users/show"
  end 

  get '/profile/edit' do 
    @user = user_logged_in
    erb :"users/edit"
  end

  post '/profile/edit' do
    @user = user_logged_in
    @user.update(:username => params[:username], :email => params[:email], :occupation => params[:occupation])
    redirect '/profile'
  end 

  get '/users/most-milestones' do 
    @user = User.all.max_by{|user|user.milestones.size}
    erb :"users/mostmilestones"
  end 
   
end 
