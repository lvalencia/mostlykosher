class FanController < ApplicationController
   def newsletter_signup
      fan = Fan.create({ email:params[:email] }) 
      if fan.errors.messages.any?
         render :json => { status:"failed", error:"#{ fan.errors.messages.to_json }" }
      else
         render :json => { status:"success" }
      end
   end
end
