json.extract! project, :id, :project_name, :porject_description, :on_progress, :starts_on, :created_at, :updated_at
json.url project_url(project, format: :json)
