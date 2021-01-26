class MilestonesController < ApplicationController

    get '/milestones' do 
        @user = user_logged_in
        erb :"milestones/milestones"
    end 

    get '/milestones/new' do 

        if !logged_in?
            redirect '/login'
        else
            erb :"milestones/new"
        end 
    end 

    post '/milestones/new' do 
        @milestone = Milestone.new
        @milestone.title = params[:title]
        @milestone.description = params[:description]
        @milestone.date_created = Time.now
        @milestone.user_id = user_logged_in.id
        @milestone.plan = params[:plan]
        if @milestone.save 
            redirect '/milestones'
            
        else 
            erb :"milestones/new"
        end
    end 

    get '/milestones/:id/edit' do
        if !logged_in?
            redirect '/login'
        else
            @milestone = user_logged_in.milestones.find_by(params[:id])  
            erb :"milestones/edit"
         end
    end 


    patch '/milestones/:id' do 
        @milestone = user_logged_in.milestones.find_by(params[:id]) 
        if @milestone == nil
            redirect "/userhome"
        else 
        @milestone.update(:title => params[:title], :description => params[:description])
        redirect '/milestones'
        end 
    end    

    patch '/milestones/:id/delete' do 
        @milestone = user_logged_in.milestones.find_by(params[:id]) 
        if @milestone == nil
            redirect "/userhome"
        else 
        @milestone.destroy
        redirect '/userhome'
        end 
    end 

end