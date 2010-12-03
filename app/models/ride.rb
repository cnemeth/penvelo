class Ride < ActiveRecord::Base

  acts_as_authorization_object

  belongs_to :ride_type

  validates_presence_of :name, :days, :location, :time, :start_point, :description, :disctance, :elevation
  validates_numericality_of :distance, :elevation

end

# == Schema Information
#
# Table name: rides
#
#  id           :integer(4)      not null, primary key
#  name         :string(255)     not null
#  days         :string(255)
#  location     :string(255)
#  time         :time
#  start_point  :string(255)
#  end_point    :string(255)
#  description  :text
#  distance     :decimal(5, 2)
#  elevation    :integer(4)
#  link_to_pdf  :string(255)
#  link_to_map  :string(255)
#  ride_type_id :integer(4)
#  created_at   :datetime
#  updated_at   :datetime
#

