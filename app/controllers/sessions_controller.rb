class SessionsController < ApplicationController

    get '/login' do 
        erb :"sessions/login"
    end 
    
    post '/login' do 
        login(params[:email], params[:password])
        redirect '/userhome'
    end 

    post '/logout' do 
        logout
        redirect '/'
    end 


end
