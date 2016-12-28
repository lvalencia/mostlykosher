Rails.application.routes.draw do
  root 'client#landing'
  
  match 'shop', to: 'client#shop', via: :get
  match 'shows', to: 'client#shows', via: :get
  match 'gallery', to: 'client#gallery', via: :get
  match 'about', to: 'client#about', via: :get

  scope '/fan' do
    post 'newsletter', to: 'fan#newsletter_signup'
  end

  scope '/admin' do
    match 'login', to: 'admin#login', via: :post
    match 'logout', to: 'admin#logout', via: [:get, :post]
    get 'signin', to: 'admin#signin'
  end

  get '/admin', to: redirect('/admin/signin')

  namespace :admin do
    resources :events
    resources :reviews
  end
end
