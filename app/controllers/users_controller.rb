class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users =  matching_users.order({ :username => :asc})

    render({:template => "users_templates/index"})
  end

  def show
    url_username = params.fetch("path_username")
    matching_usernames = User.where({:username => input_username})
   
   @the_user = matching_usernames.first

    render({:template => "users_templates/show"})
   end
end
