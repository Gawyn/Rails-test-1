Railstest1::Application.routes.draw do
  get "numbers/create"

  get "numbers/new"

  root :to => 'numbers#new'

end
