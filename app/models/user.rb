class User < ActiveRecord::Base

  acts_as_authentic
  acts_as_authorization_subject  :association_name => :roles

  attr_accessible :first_name
  attr_accessible :last_name
  attr_accessible :middle_initial
  attr_accessible :name
  attr_accessible :date_of_birth
  attr_accessible :gender
  attr_accessible :user_image_url
  attr_accessible :image_gallery_url
  attr_accessible :performance_team_member
  attr_accessible :usac_license
  attr_accessible :active
  attr_accessible :member_since
  attr_accessible :login
  attr_accessible :password
  attr_accessible :password_salt
  attr_accessible :profile
  attr_accessible :role_ids
  attr_accessible :race_discipline_ids
  attr_accessible :race_category_ids

  has_many :contacts
  has_many :race_results

  has_and_belongs_to_many :roles
  has_and_belongs_to_many :race_disciplines
  has_and_belongs_to_many :race_categories

  composed_of :name,
              :class_name => "Name",
              :mapping =>
                [
                  %w[ first_name first ],
                  %w[ middle_initial initials ],
                  %w[ last_name last ]
                ]
end

# == Schema Information
#
# Table name: users
#
#  id                  :integer(4)      not null, primary key
#  first_name          :string(40)      not null
#  middle_initial      :string(255)
#  last_name           :string(40)      not null
#  date_of_birth       :date
#  gender              :string(255)     default("Male"), not null
#  user_image_url      :string(255)
#  image_gallery_url   :string(255)
#  member_since        :date            not null
#  usac_license        :string(20)
#  profile             :text
#  login               :string(255)     not null
#  crypted_password    :string(255)     not null
#  password_salt       :string(255)     not null
#  persistence_token   :string(255)     not null
#  single_access_token :string(255)     not null
#  perishable_token    :string(255)     not null
#  login_count         :integer(4)      default(0), not null
#  failed_login_count  :integer(4)      default(0), not null
#  last_request_at     :datetime
#  last_login_at       :datetime
#  current_login_at    :datetime
#  last_login_ip       :string(255)
#  current_login_ip    :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#

