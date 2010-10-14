class Club < ActiveRecord::Base

  acts_as_authorization_object

  validates_presence_of :name, :year
  validates_numericality_of  :year

end


# == Schema Information
#
# Table name: clubs
#
#  id              :integer(4)      not null, primary key
#  name            :string(255)
#  logo_url        :string(255)
#  headline        :text
#  mission         :text
#  description     :text
#  year            :integer(4)
#  location        :string(255)
#  phone           :string(255)
#  email           :string(255)
#  url             :string(255)
#  legal           :text
#  privacy         :text
#  copyright       :text
#  webmaster_email :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

