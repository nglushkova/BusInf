# encoding: utf-8
class Theme < ActiveRecord::Base
  belongs_to :module_of_discipline
  belongs_to :discipline

  #validates_presence_of :theme_name, :on => :create, :message => "Вписать тему"
  #validates_presence_of :discipline_id, :on => :create, :message => "Выбрать дисциплину"
  #validates_presence_of :module_of_discipline_id, :on => :create, :message => "Выбрать модуль"

  #attr_accessible :theme_name, :theme_inmodule, :theme_indiscipline, :theme_numberofhour, :theme_technologytraining , :module_of_discipline_id, :discipline_id

  #accepts_nested_attributes_for :module_of_disciplines, :allow_destroy => true

end