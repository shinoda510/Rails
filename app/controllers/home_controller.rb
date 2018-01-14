class HomeController < ApplicationController
  def top
  end
  #------ruby_test1------

  def google_seach
    require 'mechanize'

    agent = Mechanize.new
    agent.user_agent_alias = 'Mac Safari 4'
    page = agent.get('https://www.google.co.jp/')

    form = page.form_with(action:'/search')
    form.field_with(name:'q').value = 'リーグオブレジェンド'
        
    next_page = agent.submit(form)
    @lists = []
    i=0
    next_page.search("//h3[@class='r']").each do |list|
      @lists[i] = list.text.to_s
      i+=1
    end
  end
  
  
end
