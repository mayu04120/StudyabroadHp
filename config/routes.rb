Rails.application.routes.draw do


  devise_for :users
  get 'users/index'
  get'users/show/:id'=>"users#favorites", as:"userpage_show"
    

  get '/top' => 'home#top'
  get '/about' => 'home#about'
  get'/gratitude'=>'home#gratitude'
 get'/pamphlet'=>'home#pamphlet'
  get'/media'=>'home#media'

  get'/inquiry' => 'inquiries#index'
  post'inquiry/gratitude' =>'inquiries#gratitude'

  post '/home' => 'home#create'
  # get'article/show/:id'=>'article#show', as:'pageshow'
  # resources :article, except:[:show]
# get"users/show/:id"=>"users#show", as:"usersshow"
  # root 'article#index'


resources :articles do
  # resources :aricles, except:[:show] do
    resources :favorites, only: [:create, :destroy]
  end
 root 'articles#index'



 # devise_for :article
  # resources :article, only: [:index, :show] do
  #   get :favorites, on: :member
  # end
  # resources :article do
  #   resource :favorites, only: [:create, :destroy]
  # end
  # root 'article#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
