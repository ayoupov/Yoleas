Yoleas::Application.routes.draw do

#  match '/:locale' => 'home#index'
  root :to => "home#index"
  get "home/index"

  scope "(:locale)", :locale => /en|ru/ do

    resource :session
    resources :posts
    resource :home
    match 'process' => "process#index"
    match 'feedback' => "feedback#index"
    match 'faq' => "faq#index"

    resources :users do
      resource :additional_info
    end
  end

end
