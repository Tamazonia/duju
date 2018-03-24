class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :invitations, :class_name => 'Contact', :foreign_key => 'requester_id'
  has_many :requests, :class_name => 'Contact', :foreign_key => 'requestee_id'

  has_many :network_ones, :class_name => 'Contact', :foreign_key => 'networker_one_id'
  has_many :network_twos, :class_name => 'Contact', :foreign_key => 'networker_two_id'

end
