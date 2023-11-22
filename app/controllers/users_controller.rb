class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users =  matching_users.order({ :username => :asc})

    render({:template => "users_templates/index"})
  end

  def show
    input_username = params.fetch("path_username")
    matching_usernames = User.where({:username => input_username})
   
   @the_user = matching_usernames.first

    render({:template => "users_templates/show"})
   end

   def add
    @a_new_user = User.new
    @a_new_user.username = params.fetch("input_username")
    @a_new_user.save
  
    @the_user = User.where({:username => @a_new_user})
    
    render({ :template => "users_templates/add_user" })
  end
end
