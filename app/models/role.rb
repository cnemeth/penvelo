class Role < ActiveRecord::Base

  acts_as_authorization_role

  has_and_belongs_to_many :users

end

# == Schema Information
#
# Table name: roles
#
#  id                :integer(4)      not null, primary key
#  name              :string(40)
#  authorizable_type :string(40)
#  authorizable_id   :integer(4)
#  created_at        :datetime
#  updated_at        :datetime
#

