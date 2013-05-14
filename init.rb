require 'redmine'

Redmine::Plugin.register :redmine_related_buster do
  name 'Related Buster'
  author 'Alex Tsirel'
  description 'Showing difference between parent issues and their children'
  version '0.0.1'
  url 'https://github.com/noma4i/Redmine-Related-Buster'
  author_url 'https://github.com/noma4i'
  requires_redmine :version_or_higher => '2.0.0'

  project_module :redmine_related_buster do
    permission :redmine_related_buster, {:redmine_related_buster => [:show_orphans, :perform_adoption]}
  end

   menu :project_menu,
    :redmine_related_buster,
    {:controller => 'redmine_related_buster', :action => 'show_orphans'},
    :caption => "Related Buster",
    :param => :project_id

end