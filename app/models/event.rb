class Event < ActiveRecord::Base
   def self.next
      Event.where("date > ?", DateTime.now).where.not({published_at:nil }).first
   end

   def self.previous_shows
      Event.where("date < ?", DateTime.now).where.not({ published_at: nil }).order("date desc")
   end

   def self.upcoming_shows
      Event.where("date > ?", DateTime.now).where.not({ published_at: nil }).order("date asc")
   end

   def self.published
      Event.where.not({ published_at:nil }).order("date desc")
   end

   def self.unpublished
      Event.where({ published_at:nil }).order("date desc")
   end
end
