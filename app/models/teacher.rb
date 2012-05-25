# encoding: utf-8
class Teacher < ActiveRecord::Base
  attr_accessible :teach_name, :teach_surname, :teach_secondname, :teach_rank, :teach_description, :teach_img
  has_attached_file :teach_img

  validates :teach_name, :presence => true, :length => {:maximum => 15}
  validates :teach_secondname, :presence => true, :length => {:maximum => 20}
  validates :teach_surname, :presence => true, :length => {:maximum => 30}
end