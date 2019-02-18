Rottenpotatoes::Application.routes.draw do
  resources :movies
  root :to => redirect('/movies')
  get 'similar_movies/:title' => 'movies#similar', as: :similar_movies
  # map '/' to be a redirect(/movies')
  # match "/" => redirect("/movies")
end
