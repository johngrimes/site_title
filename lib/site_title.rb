module SiteTitle
  include Radiant::Taggable

  desc 'Site tag namespace'
  tag 'site' do |tag|
    tag.expand
  end

  desc 'Outputs the site title'
  tag 'site:title' do |tag|
    unless site_title = Radiant::Config.find_by_key('site.title')
      raise 'Config entry with key of site.title not found.'
    end

    if tag.attr['with_page_title']
      if !tag.attr['separator']
        tag.attr['separator'] = ' &raquo; '
      end
      "#{tag.locals.page.title}#{tag.attr['separator']}#{site_title.value}"
    else
      site_title.value
    end
  end
end
