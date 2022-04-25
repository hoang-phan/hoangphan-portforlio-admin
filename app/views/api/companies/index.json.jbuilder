json.array! @companies do |company|
  json.(company, :id, :name, :from_year, :to_year)
  json.logo_url company.logo.attachment.url if company.logo.attached?
  json.projects company.projects, :id, :name, :from_year, :to_year, :summary, :challenge, :resolution
end
