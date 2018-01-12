Rails.application.routes.draw do
  get '/' => "home#top"
  get 'about' => "home#about"
  get 'Run_away_rat' => "home#Run_away_rat"
  get 'load_action' => "home#load_action"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
