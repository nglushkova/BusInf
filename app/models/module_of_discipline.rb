# encoding: utf-8
class ModuleOfDiscipline < ActiveRecord::Base
  belongs_to :discipline
  has_many :themes
end