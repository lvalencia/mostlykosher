Rails.application.routes.draw do
   root "client#landing"
  
   match "shop", to: "client#shop", via: :get

   scope '/fan' do
       post "newsletter", to: "fan#newsletter_signup"
   end

end
