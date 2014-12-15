class Event < ActiveRecord::Base
   def self.next
      Event.where("date > ?", DateTime.now).first
   end
end
