crumb :root do
  link I18n.t('breadcrumbs.home'), cloud_services_path
end

# Search cloud services
crumb :search_cloud_services do
  link I18n.t('breadcrumbs.search_cloud_services'), cloud_services_path
  parent :root
end

# Detail for cloud services
crumb :detail_cloud_service do
  link I18n.t('breadcrumbs.detail_cloud_service')
  parent :search_cloud_services
end

# Administration
crumb :administration do
  link I18n.t('breadcrumbs.administration')
  parent :root
end

# Display Cloud Services (Admin)
crumb :cloud_service_administration do
  link I18n.t('breadcrumbs.cloud_service_administration'), admin_cloud_services_path
  parent :administration
end

# Create Cloud Service
crumb :create_cloud_service do
  link I18n.t('breadcrumbs.create_cloud_service'), new_admin_cloud_service_path
  parent :cloud_service_administration
end

# Edit Cloud Service
crumb :edit_cloud_service do
  link I18n.t('breadcrumbs.edit_cloud_service'), edit_admin_cloud_service_path
  parent :cloud_service_administration
end

# Display all users
crumb :user_administration do
  link I18n.t('breadcrumbs.user_administration'), admin_users_path
  parent :administration
end

# Administrate specific user
crumb :administrate_user do
  link I18n.t('breadcrumbs.edit_user')
  parent :user_administration
end

# Edit profile
crumb :edit_profile do
  link I18n.t('breadcrumbs.edit_profile')
  parent :root
end




# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).