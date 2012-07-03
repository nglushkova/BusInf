# encoding: utf-8
class Student < ActiveRecord::Base
  has_one :user
  belongs_to :group
  has_many :book_of_visits
  attr_accessible :stud_name, :stud_surname, :stud_secondname, :group_id, :stud_captain

  validates :stud_name, :presence => true, :length => {:maximum => 15}
  validates :stud_surname, :presence => true, :length => {:maximum => 30}
  validates :stud_secondname, :presence => true, :length => {:maximum => 20}
  validates :group_id, :presence => true
end