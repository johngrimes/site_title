class SiteTitleExtension < Radiant::Extension
  version "1.0"
  description 'Adds a custom tag that allows you to include a site title in your templates.'
  url 'http://github.com/smallspark/site_title'
  
  def activate
    Page.send :include, SiteTitle
  end
  
  def deactivate
  end
  
end
