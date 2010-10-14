class Contact < ActiveRecord::Base

  acts_as_authorization_object

  belongs_to :im_type
  belongs_to :user
end

# == Schema Information
#
# Table name: contacts
#
#  id              :integer(4)      not null, primary key
#  street          :string(255)
#  city            :string(40)      not null
#  state           :string(40)      not null
#  zip             :string(10)
#  country         :string(255)
#  primary_phone   :string(40)      not null
#  secondary_phone :string(255)
#  email           :string(40)      not null
#  im_handle       :string(255)
#  im_type_id      :integer(4)
#  user_id         :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#

