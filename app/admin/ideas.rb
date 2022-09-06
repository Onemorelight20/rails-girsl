ActiveAdmin.register Idea do


  permit_params :name, :description, :picture
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :picture, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
