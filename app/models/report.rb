# Report model
class Report < ActiveRecord::Base
  belongs_to :block
  mount_uploader :image, PictureUploader

 attr_writer :current_step

 def current_step
  @current_step || steps.first
 end


 def steps
  %w[first second]
 end

 def next_step
  self.current_step = steps[steps.index(current_step) + 1]
 end

 def previous_step
  self.current_step = steps[steps.index(current_step) - 1]
 end

 def first_page?
   current_step == steps.first
 end

 def last_page?
  current_step == steps.last
 end


end
