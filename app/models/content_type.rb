class ContentType < ActiveRecord::Base

  acts_as_authorization_object

  has_many :contents

  validates_presence_of :name

end

# == Schema Information
#
# Table name: content_types
#
#  id         :integer(4)      not null, primary key
#  name       :string(40)      not null
#  created_at :datetime
#  updated_at :datetime
#

