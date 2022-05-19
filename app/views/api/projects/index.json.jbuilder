json.array! @projects do |project|
  json.(project, :id, :name, :from_year, :to_year, :summary, :challenge, :resolution)
  json.company do
    json.(project.company, :id, :name, :from_year, :to_year)
    json.logo_url rails_blob_url(project.company.logo) if project.company.logo.attached?
  end
end
