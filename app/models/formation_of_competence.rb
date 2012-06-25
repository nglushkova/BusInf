# encoding: utf-8
class FormationOfCompetence < ActiveRecord::Base
  belongs_to :competence
  belongs_to :discipline


end