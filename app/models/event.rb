# encoding: utf-8
class Event < ActiveRecord::Base
  belongs_to :cell_sked
  has_and_belongs_to_many :groups
  has_and_belongs_to_many :users
  attr_accessible :ev_author, :ev_text, :ev_date, :cell_sked_id, :group_id, :ev_recipient

  validates :ev_author, :presence => true
  validates :ev_text, :presence => true
  validates :ev_date, :presence => true
  validates :cell_sked_id, :presence => true
end