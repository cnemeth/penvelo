class Position < ActiveRecord::Base

  acts_as_authorization_object

  has_and_belongs_to_many :users

end

# == Schema Information
#
# Table name: positions
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

