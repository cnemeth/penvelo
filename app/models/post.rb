class Post < ActiveRecord::Base

  acts_as_authorization_object

  has_many :comments, :dependent => :destroy
  accepts_nested_attributes_for :comments, :reject_if => lambda { |a| a[:entry].blank? }, :allow_destroy => true

  validates_presence_of :title, :entry

end


# == Schema Information
#
# Table name: posts
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  entry      :text
#  tags       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

