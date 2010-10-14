class Race < ActiveRecord::Base

  acts_as_authorization_object

  belongs_to :race_discipline

end

# == Schema Information
#
# Table name: races
#
#  id                   :integer(4)      not null, primary key
#  name                 :string(255)     not null
#  date                 :date            not null
#  time                 :time
#  place                :string(255)     not null
#  organizer            :string(255)
#  start_location       :string(255)
#  finish_location      :string(255)
#  description          :text
#  link_to_website      :string(255)
#  link_to_registration :string(255)
#  race_discipline_id   :integer(4)
#  created_at           :datetime
#  updated_at           :datetime
#

