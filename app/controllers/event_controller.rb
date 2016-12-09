class EventController < ApplicationController

   def edit
      if request.post?
         #Update the Shit and Re-Route
         @event = Event.find_by_id(params[:id])
         if @event.nil?
            flash[:error] = "Account not Found"
            redirect_to home_admin_index_path
         else
            if @event.update_attributes({
                     title: params[:title],
                      link: params[:link],
                      date: Chronic.parse(params[:date]).to_date,
                   location: params[:location],
               description: params[:description],
              published_at: (params[:publish].to_s.eql? "published") ? (@event.published_at.nil? ? Time.now : @event.published_at) : nil
            })
               flash[:updated] = "Updated Event"
            else
               flash[:error] = "Failed to Update Event"
            end
         end
      else
         @event = Event.find_by_id(params[:id])
         if @event.nil?
            flash[:error] = "Event not Found"
            redirect_to home_admin_index_path
         end
      end
   end

   def create
      if request.post?
          @event = Event.new({
                     title: params[:title],
                      link: params[:link],
                   location: params[:location],
               description: params[:description],
              published_at: (params[:publish].to_s.eql? "published") ? (@event.published_at.nil? ? Time.now : @event.published_at) : nil
          }) 
          if @event.save 
             flash[:updated] = "Updated Event"
          else
            flash[:error] = "Failed to Update Event"
          end
          redirect_to home_admin_index_path
      else
         flash[:error] = "Request not a POST"
         redirect_to home_admin_index_path
      end
   end
 
   def delete
      event = Event.find_by_id(params[:id])
      if not event.nil?
         event.destroy
      else
         flash[:error] = "Account not Found"
      end
      redirect_to home_admin_index_path
   end

end
