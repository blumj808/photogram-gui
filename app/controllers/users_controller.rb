class UsersController < ApplicationController
  def index
    matching_users = User.all
    #.all goes to dB and retrieve all rows to user table

    @list_of_users =  matching_users.order({ :username => :asc})
    #first value is what column; second order
    

#backend logic to provide some data to send to view template
    render({:template => "users_templates/index"})
    #where info for users happens in HTML
    #need a persistent space to store data (database)
  end

  def show
    @input_username = params.fetch("path_username")
    matching_usernames = User.where({:username => @input_username})
   
   @the_user = matching_usernames.first

    render({:template => "users_templates/show"})
   end

   def add
    @a_new_user = User.new
    @a_new_user.username = params.fetch("input_username")
    @a_new_user.save
  
    
    redirect_to("/users/#{@a_new_user.username}")
  end
end
