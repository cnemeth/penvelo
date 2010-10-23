class ImType < ActiveRecord::Base

  acts_as_authorization_object

  attr_accessible :name

  has_many :contacts

end

# == Schema Information
#
# Table name: im_types
#
#  id         :integer(4)      not null, primary key
#  name       :string(40)      not null
#  created_at :datetime
#  updated_at :datetime
#

