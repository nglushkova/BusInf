# encoding: utf-8
class Discipline < ActiveRecord::Base
  has_many :formation_of_competences
  has_many :interim_attestations
  has_many :module_of_disciplines
  has_many :themes
  has_many :couples
  belongs_to :speciality
end