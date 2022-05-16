json.array! @projects do |project|
  json.(project, :id, :name, :summary, :challenge, :resolution, :code_url, :live_url, :tag_list)
  json.image_url project.image.attachment.url if project.image.attached?
end
