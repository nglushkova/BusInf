# encoding: utf-8
class Group < ActiveRecord::Base
  has_many :students
  belongs_to :speciality
  belongs_to :course
  has_many :couples
  has_many :events
  has_many :advertisements
  has_many :users
  attr_accessible :speciality_id, :gr_course, :gr_cipher, :gr_quantity

  validates :speciality_id, :presence => true
  validates :gr_course, :presence => true
  validates :gr_cipher, :presence => true
  validates :gr_quantity, :presence => true, :length => {:maximum => 2}
end