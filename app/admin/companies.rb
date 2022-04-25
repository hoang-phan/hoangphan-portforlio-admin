ActiveAdmin.register Company do
  permit_params :name, :from_year, :to_year, :location, :title, :logo

  index do
    id_column
    column :name
    column :from_year
    column :to_year
    column :location
    column :title
    actions
  end

  show do
    attributes_table *Company.column_names do
      row :logo do |company|
        if company.logo.attached?
          image_tag_without_cloudinary(company.logo.attachment.url)
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :from_year
      f.input :to_year
      f.input :location
      f.input :title
      f.input :logo, as: :file
    end
    f.actions
  end
end
