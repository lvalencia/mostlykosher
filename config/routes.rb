Rails.application.routes.draw do
   root "client#landing"
  
   match "shop", to: "client#shop", via: :get
   match "shows", to: "client#shows", via: :get

   scope '/fan' do
       post "newsletter", to: "fan#newsletter_signup"
   end

   get '/admin', to: redirect('/admin/login')
   resources :admin, except: [:new, :create, :edit, :show, :update, :destroy] do
      collection do
         get "login"
         post "login"
         get "home"
      end
   end

  resources :event, except: [:new, :create, :show, :update, :destroy] do
     collection do
        get  "delete"
        post "create"
        post ':id/edit' => "event#edit"
     end 
  end 
end
