ActiveAdmin.register User do

  index do
    selectable_column
    column :first_name
    column :last_name
    column :email
    column :survey
    default_actions
  end 

  form do |f|
    f.inputs "Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
end
