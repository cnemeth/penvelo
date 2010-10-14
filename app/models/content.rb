class Content < ActiveRecord::Base

  acts_as_authorization_object

  belongs_to :content_type
end


# == Schema Information
#
# Table name: contents
#
#  id              :integer(4)      not null, primary key
#  title           :string(255)     not null
#  entry           :text
#  tags            :string(255)
#  content_type_id :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#

