Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'sports/multiple', to: 'sports#multiple' # sports in which more than one player plays
  get 'sports/no', to: 'sports#no' # sports in which no player plays
  get 'players/search', to: 'players#search' # sports in which no player plays

  get 'sport/:name', to: 'sports#show' # find sport with the given name with association to players

end
