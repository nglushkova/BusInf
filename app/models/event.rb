# encoding: utf-8
class Event < ActiveRecord::Base
  belongs_to :cell_sked
  belongs_to :group
end