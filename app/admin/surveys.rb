ActiveAdmin.register Survey do
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
