# encoding: utf-8
class Competence < ActiveRecord::Base
  has_many :formation_of_competences

  attr_accessible :comp_group, :comp_name, :comp_subgroup
  validates_presence_of :comp_group, :on => :create, :message => "Впишите шифр компетенции"
  validates_presence_of :comp_name, :on => :create, :message => "Заполните содержание компетенции"

end