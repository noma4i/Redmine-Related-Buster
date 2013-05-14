RedmineApp::Application.routes.draw do
  get "/redmine_related_buster/show_orphans", :to => "redmine_related_buster#show_orphans", :as => "redmine_related_buster_orphans_show"
  get "/redmine_related_buster/adopt_all/:issue_id", :to => "redmine_related_buster#perform_adoption",:as => "adopt_orphans"
end