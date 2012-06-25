# encoding: utf-8
class Group < ActiveRecord::Base
  has_and_belongs_to_many :events
  has_and_belongs_to_many :advertisements
  has_many :students
  has_many :couples
  belongs_to :speciality
  has_many :messages

  attr_accessible :speciality_id, :gr_course, :gr_cipher, :gr_quantity

  validates :speciality_id, :presence => true
  validates :gr_course, :presence => true
  validates :gr_cipher, :presence => true
  validates :gr_quantity, :presence => true, :length => {:maximum => 2}
end