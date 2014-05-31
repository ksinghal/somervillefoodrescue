# == Schema Information
#
# Table name: pickup_reports
#
#  id             :integer          not null, primary key
#  donor_id       :integer
#  recipient_id   :integer
#  produce_weight :integer
#  dairy_wieght   :integer
#  bread_weight   :integer
#  meat_weight    :integer
#  other_weight   :integer
#  created_at     :datetime
#  updated_at     :datetime
#  volunteer_ids  :integer          default([]), is an Array
#

class PickupReport < ActiveRecord::Base
end
