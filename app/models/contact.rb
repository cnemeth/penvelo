class Contact < ActiveRecord::Base

  acts_as_authorization_object

  attr_accessible :street
  attr_accessible :city
  attr_accessible :state
  attr_accessible :zip
  attr_accessible :country
  attr_accessible :primary_phone
  attr_accessible :secondary_phone
  attr_accessible :email
  attr_accessible :im_handle
  attr_accessible :im_type_id
  attr_accessible :user_id

  belongs_to :im_type
  belongs_to :user

  validates_presence_of :city, :state, :email, :user_id

  validates_format_of :email,
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message => 'email must be valid'

  #validates_format_of :email, :with => %r{^(?:[_a-z0-9-]+)(\.[_a-z0-9-]+)*@([a-z0-9-]+)(\.[a-zA-Z0-9\-\.]+)*(\.[a-z]{2,4})$}i


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

