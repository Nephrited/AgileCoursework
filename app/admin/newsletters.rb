ActiveAdmin.register Newsletters do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :title, :date, :file

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Newsletters", :multipart => true do
      f.input :title
      f.input :date
      f.input :file
    end
  f.actions
  end
end
