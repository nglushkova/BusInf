# encoding: utf-8
class Couple < ActiveRecord::Base
  belongs_to :cell_sked
  belongs_to :group
  belongs_to :discipline

  attr_accessible :couple_week, :couple_dayweek, :cell_sked_id, :group_id, :discipline_id, :couple_cabinet, :couple_teacher, :couple_comment, :couple_type

  validates :couple_week, :presence => true
  validates :couple_dayweek, :presence => true
  validates :cell_sked_id, :presence => true
  validates :group_id, :presence => true
  validates :discipline_id, :presence => true
  validates :couple_cabinet, :presence => true
  validates :couple_teacher, :presence => true
  validates :couple_type, :presence => true
end