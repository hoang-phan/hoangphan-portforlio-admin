ActiveAdmin.register Project do
  permit_params :company_id, :name, :from_year, :to_year, :summary, :challenge, :resolution, :code_url, :live_url

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
end
