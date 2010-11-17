class RaceResult < ActiveRecord::Base

  acts_as_authorization_object

  belongs_to :race_discipline
  belongs_to :race_category
  belongs_to :user

  validates_presence_of :race, :date, :placement, :field_size, :race_discipline_id, :race_category_id, :user_id
  validates_numericality_of :placement, :field_size, :race_discipline_id, :race_category_id, :user_id

end

# == Schema Information
#
# Table name: race_results
#
#  id                 :integer(4)      not null, primary key
#  race               :string(255)
#  date               :date
#  placement          :integer(4)
#  field_size         :integer(4)
#  race_discipline_id :integer(4)
#  race_category_id   :integer(4)
#  user_id            :integer(4)
#  created_at         :datetime
#  updated_at         :datetime
#

