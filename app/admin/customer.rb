ActiveAdmin.register Customer do
  permit_params :full_name, :phone_number, :email, :notes, :image

  form do |f|
    f.inputs do
      f.input :full_name
      f.input :phone_number
      f.input :email
      f.input :notes
      f.input :image, as: :file
    end
    f.actions
  end

  filter :full_name_cont, label: 'Full Name'
  filter :email_cont, label: 'Email'

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :phone_number
    column :notes
    actions
  end
end
