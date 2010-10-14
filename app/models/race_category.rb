class RaceCategory < ActiveRecord::Base

  acts_as_authorization_object

  has_many :race_results
  has_and_belongs_to_many :users

end

# == Schema Information
#
# Table name: race_categories
#
#  id         :integer(4)      not null, primary key
#  name       :string(40)      not null
#  created_at :datetime
#  updated_at :datetime
#

