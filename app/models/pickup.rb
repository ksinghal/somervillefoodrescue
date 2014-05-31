# == Schema Information
#
# Table name: pickups
#
#  id                     :integer          not null, primary key
#  donor_window_start     :time
#  donor_window_end       :time
#  recipient_window_start :time
#  recipient_window_end   :time
#  donor_id               :integer
#  recipient_id           :integer
#  instructions           :text
#  created_at             :datetime
#  updated_at             :datetime
#  volunteer_ids          :integer          default([]), is an Array
#

class Pickup < ActiveRecord::Base
end
