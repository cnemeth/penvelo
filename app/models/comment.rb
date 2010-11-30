class Comment < ActiveRecord::Base

  acts_as_authorization_object

  belongs_to :post

  validates_presence_of :entry, :post_id
  validates_numericality_of :post_id

end


# == Schema Information
#
# Table name: comments
#
#  id         :integer(4)      not null, primary key
#  entry      :text
#  post_id    :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

