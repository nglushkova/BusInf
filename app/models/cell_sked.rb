# encoding: utf-8
class CellSked < ActiveRecord::Base
  has_many :couples
  has_many :events

  attr_accessible :number_couple, :start_time, :end_time

  validates :number_couple, :presence => true, :uniqueness => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true
end