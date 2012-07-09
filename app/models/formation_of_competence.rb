# encoding: utf-8
class FormationOfCompetence < ActiveRecord::Base
  belongs_to :competence
  belongs_to :discipline


  validates_presence_of :discipline_id, :on => :create, :message => "Выбрать дисциплину"

  validates_presence_of :competence_id, :on => :create, :message => "Выбрать компетенцию"


end