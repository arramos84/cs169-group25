ActiveAdmin.register Survey do
  index do
    selectable_column
    column :id
    column :user
    column :first_name do |resource|
      resource.user.first_name
    end
    column :last_name do |resource|
      resource.user.last_name
    end
    column :created_at
    column :ei
    column :ft
    column :ns
    column :jp
    column :personality_type
    default_actions
  end 

  form do |f|
    f.inputs "Details" do
      f.input :ei
      f.input :ft
      f.input :ns
      f.input :jp
      f.input :personality_type
      f.input :user_id
    end
    f.buttons
  end
end
