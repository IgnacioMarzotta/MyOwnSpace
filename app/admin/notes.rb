ActiveAdmin.register Note do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :bodycolor_id, :title, :description, :content, :selected, :recycled, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:bodycolor_id, :title, :description, :content, :selected, :recycled, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  index do
    column :id
    column :title
    column :description
    column :user_id
    column :bodycolor_id
    column :recycled
    column :created_at
    column :updated_at
  end
end
