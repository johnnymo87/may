class UsersController < ApplicationController
  def new
    #Form to create a new user
    #For admins only - will have option to select type of user
  end

  def create
    #Creates new user account
    #Redirects to confirmation page upon successful account creation
  end

  def edit
    #Displays form for editing an existing user
    #Only admin level users can edit a user besides him/herself
  end

  def update
    #Applies changes from edit form
    #Redirects to confirmation page upon completion of successful changes
  end

  def show
  end

  def index
  end

  def delete
  end

  def confirmation
  end



end
