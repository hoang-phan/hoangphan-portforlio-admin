json.array! @projects do |project|
  json.(project, :id, :name, :summary, :challenge, :resolution, :code_url, :live_url, :tag_list)
  json.image_url rails_blob_url(project.image) if project.image.attached?
end
