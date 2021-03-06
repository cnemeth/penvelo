class Feedback < ActiveRecord::Base

  acts_as_authorization_object

  belongs_to :feedback_type

  validates_presence_of :feedback, :feedback_type_id

end

# == Schema Information
#
# Table name: feedbacks
#
#  id               :integer(4)      not null, primary key
#  feedback         :text
#  feedback_type_id :integer(4)
#  created_at       :datetime
#  updated_at       :datetime
#

