json.array! @projects do |project|
  json.(project, :id, :name, :summary, :challenge, :resolution, :code_url, :live_url)
end
