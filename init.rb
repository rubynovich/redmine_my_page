require 'redmine'

Redmine::Plugin.register :redmine_my_page do
  name 'My page'
  author 'Roman Shipiev'
  description 'Plugin change /my/page'
  version '0.0.2'
  url 'https://github.com/rubynovich/redmine_my_page'
  author_url 'http://roman.shipiev.me'

  settings :default => {
                       :issue_status => IssueStatus.last(:conditions => {:is_closed => false}).try(:id)
                     },
         :partial => 'settings/settings'

end
