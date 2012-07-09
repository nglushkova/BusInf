# encoding: utf-8
class ModuleOfDiscipline < ActiveRecord::Base
  belongs_to :discipline
  has_many :themes   , :dependent => :destroy

  #validates_presence_of :mod_name, :on => :create, :message => "Вписать название модуля"
  #validates_presence_of :discipline_id, :on => :create, :message => "Выбрать дисциплину"

  attr_accessible :mod_name, :mod_number, :mod_numberofhours, :discipline_id, :id



  #accepts_nested_attributes_for :discipline, :allow_destroy => true     ,    :reject_if => lambda { |a| a[:content].blank? }
  accepts_nested_attributes_for :themes, :allow_destroy => true,  :reject_if => lambda { |a| a[:content].blank? }


end