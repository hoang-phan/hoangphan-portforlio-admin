ActiveAdmin.register Project do
  permit_params :company_id, :name, :from_year, :to_year, :summary, :challenge, :resolution, :code_url, :live_url, :image, :tag_list_str

  index do
    id_column
    column :company
    column :name
    column :from_year
    column :to_year
    column :summary
    column :challenge
    column :resolution
    actions
  end

  show do
    attributes_table *Project.column_names do
      row :image do |project|
        if project.image.attached?
          image_tag_without_cloudinary(project.image.attachment.url)
        end
      end
    end
  end

  form do |f|
    f.inputs do
      f.input :company
      f.input :name
      f.input :from_year
      f.input :to_year
      f.input :summary
      f.input :challenge
      f.input :resolution
      f.input :code_url
      f.input :live_url
      f.input :image, as: :file
      f.input :tag_list_str, as: :text
    end
    f.actions
  end
end
