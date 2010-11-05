class User < ActiveRecord::Base

  acts_as_authentic
  acts_as_authorization_subject  :association_name => :roles
  # Paperclip for uploading user photos
  has_attached_file :photo, :styles => { :medium => "300x300>", :small => "150x150>", :thumb => "100x100>"  },
                    :url  => "/assets/users/:id/:basename.:extension",
                    :path => ":rails_root/public/assets/users/:id/:basename.:extension"

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
  attr_accessible :password_confirmation
  attr_accessible :password_salt
  attr_accessible :profile
  attr_accessible :role_ids
  attr_accessible :position_ids
  attr_accessible :race_discipline_ids
  attr_accessible :race_category_ids
  attr_accessible :contacts_attributes

  attr_accessible :photo
  attr_accessible :photo_file_name
  attr_accessible :photo_content_type
  attr_accessible :photo_file_size
  attr_accessible :photo_updated_at



  # for building nested form
  has_many :contacts, :class_name => 'Contact'
  accepts_nested_attributes_for :contacts, :allow_destroy => true, :reject_if => :all_blank

  has_many :race_results

  has_and_belongs_to_many :roles
  has_and_belongs_to_many :positions
  has_and_belongs_to_many :race_disciplines
  has_and_belongs_to_many :race_categories


  # composite attribute defined in name.rb
  composed_of :name,
              :class_name => "Name",
              :mapping =>
                [
                  %w[ first_name first ],
                  %w[ middle_initial initials ],
                  %w[ last_name last ]
                ]

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 1.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpg','image/jpeg','image/gif','image/png']

  file_types = ['image/jpg', 'image/jpeg', 'image/gif', 'image/png', 'image/pjpeg']
  validate do |photo|
    photo.errors.clear
    photo.errors.add_to_base("File missing") if photo.photo_file_name == nil
    photo.errors.add_to_base("Wrong format") unless file_types.any? { |type| type == photo.photo_content_type }
    photo.errors.add_to_base("Wrong size") if photo.photo_file_size != nil && photo.photo_file_size > 2.megabytes
  end



end





# == Schema Information
#
# Table name: users
#
#  id                      :integer(4)      not null, primary key
#  first_name              :string(40)      not null
#  middle_initial          :string(255)
#  last_name               :string(40)      not null
#  date_of_birth           :date
#  gender                  :string(255)     default("Male"), not null
#  user_image_url          :string(255)
#  image_gallery_url       :string(255)
#  member_since            :date            not null
#  active                  :boolean(1)      default(TRUE), not null
#  performance_team_member :boolean(1)      default(FALSE)
#  usac_license            :string(20)
#  profile                 :text
#  login                   :string(255)     not null
#  crypted_password        :string(255)     not null
#  password_salt           :string(255)     not null
#  persistence_token       :string(255)     not null
#  single_access_token     :string(255)     not null
#  perishable_token        :string(255)     not null
#  login_count             :integer(4)      default(0), not null
#  failed_login_count      :integer(4)      default(0), not null
#  last_request_at         :datetime
#  last_login_at           :datetime
#  current_login_at        :datetime
#  last_login_ip           :string(255)
#  current_login_ip        :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#  photo_file_name         :string(255)
#  photo_content_type      :string(255)
#  photo_file_size         :integer(4)
#  photo_updated_at        :datetime
#

