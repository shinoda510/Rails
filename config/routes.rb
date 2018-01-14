Rails.application.routes.draw do
  get '/' => "home#top"
  get 'about' => "home#about"
  get 'Run_away_rat' => "home#Run_away_rat"
  get 'load_action' => "home#load_action"
  get 'ruby_test1' => "home#ruby_test1"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
