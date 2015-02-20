require 'rufus/scheduler' 
require 'sync_social_media'
scheduler = Rufus::Scheduler.new

scheduler.every("1h", blocking: false) do
   SyncSocialMedia.start
end
