# encoding: utf-8
class Speciality < ActiveRecord::Base
  has_many :groups
  has_many :disciplines
  attr_accessible :spec_name, :spec_redaction, :spec_description

  validates :spec_name, :presence => true, :length => {:maximum => 150}
  validates :spec_redaction, :presence => true, :length => {:maximum => 6}
end