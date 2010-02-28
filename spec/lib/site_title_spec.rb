require File.dirname(__FILE__) + '/../spec_helper'

describe 'SiteTitle' do
  dataset :pages
  
  describe '<r:site:title>' do
    before(:all) do
      Radiant::Config.create(:key => 'site.title', :value => 'My Site')
    end

    it 'should render the correct title' do
      tag = '<r:site:title />'
      expected = 'My Site'
      
      pages(:home).should render(tag).as(expected)
    end

    it 'should render a correct title including the page title' do
      tag = '<r:site:title with_page_title="true" separator=" | " />'
      expected = 'Home | My Site'
      
      pages(:home).should render(tag).as(expected)
    end
  end
end
