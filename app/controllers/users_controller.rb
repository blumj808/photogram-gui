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

    input_user = params.fetch("input_username")

    input_user_caption = params.fetch("query_caption")

    input_user_image = params.fetch("query_caption")
  
    input_user_id = params.fetch("query_owner_id")
  
    a_new_user = User.new
  
    a_new_user.image = input_user_image
  
    a_new_photo.caption = input_user_caption
  
    a_new_photo.owner_id = input_user_id
  
    a_new_user.save
  
   render({:template => "users_templates/add_user" })
end
end
