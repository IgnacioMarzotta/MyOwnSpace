ActiveAdmin.register Info do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :bodycolor_id, :servicename, :encrypted_nickname, :encrypted_email, :encrypted_password, :encrypted_content, :user_id, :encrypted_nickname_iv, :encrypted_email_iv, :encrypted_password_iv, :encrypted_content_iv, :nickname, :email, :password, :content
  #
  # or
  #
  # permit_params do
  #   permitted = [:bodycolor_id, :servicename, :encrypted_nickname, :encrypted_email, :encrypted_password, :encrypted_content, :user_id, :encrypted_nickname_iv, :encrypted_email_iv, :encrypted_password_iv, :encrypted_content_iv, :nickname, :email, :password, :content]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    column :id
    column :user_id
    column :servicename
    column :updated_at
    column :created_at
  end
end
