# == Schema Information
#
# Table name: recipients
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  address      :string(255)
#  email        :string(255)
#  phone_number :string(255)
#  instructions :text
#  created_at   :datetime
#  updated_at   :datetime
#

class Recipient < ActiveRecord::Base
	has_many :pickups
end
