class Sponsor < ActiveRecord::Base

  acts_as_authorization_object

  attr_accessible :sponsor_discounts

  belongs_to :sponsor_type
  has_many :sonsor_discounts

  validates_presence_of :name, :email, :url, :contact_name, :rank, :active, :active_since, :sponsor_type_id
  validates_numericality_of :rank, :sponsor_type_id

  validates_format_of :email,
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
                      :message => 'email must be valid'

  validates_format_of :url, :with => URI::regexp(%w(http https))

end


# == Schema Information
#
# Table name: sponsors
#
#  id              :integer(4)      not null, primary key
#  name            :string(255)
#  phone           :string(255)
#  email           :string(255)
#  url             :string(255)
#  logo_url        :string(255)
#  contact_name    :string(255)
#  contact_phone   :string(255)
#  contact_email   :string(255)
#  rank            :integer(4)
#  active          :boolean(1)
#  active_since    :date
#  slogan          :text
#  description     :text
#  sponsor_type_id :integer(4)
#  created_at      :datetime
#  updated_at      :datetime
#

