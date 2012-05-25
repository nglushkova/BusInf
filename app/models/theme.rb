# encoding: utf-8
class Theme < ActiveRecord::Base
  belongs_to :module_of_discipline
  belongs_to :discipline
end