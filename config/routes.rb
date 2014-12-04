Rails.application.routes.draw do
   root "client#landing"

   scope '/fan' do
       post "newsletter", to: "fan#newsletter_signup"
   end

end
