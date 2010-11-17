class SponsorDiscount < ActiveRecord::Base

  acts_as_authorization_object

  belongs_to :sponsor

  validates_presence_of :discount, :sponsor_id
  validates_numericality_of :sponsor_id

end


# == Schema Information
#
# Table name: sponsor_discounts
#
#  id         :integer(4)      not null, primary key
#  discount   :text
#  sponsor_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

