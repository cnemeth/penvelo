class FeedbackType < ActiveRecord::Base

  acts_as_authorization_object

  has_many :feedbacks

  validates_presence_of :name

end

# == Schema Information
#
# Table name: feedback_types
#
#  id         :integer(4)      not null, primary key
#  name       :string(40)      not null
#  created_at :datetime
#  updated_at :datetime
#

