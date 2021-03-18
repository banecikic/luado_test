json.extract! project, :id, :project_title, :description, :created_at, :updated_at
json.url project_url(project, format: :json)
