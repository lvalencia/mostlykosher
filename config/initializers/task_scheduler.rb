require 'rufus/scheduler' 

scheduler = Rufus::Scheduler.new

scheduler.every("1h", blocking: false) do
   rake sync_social_media
end
