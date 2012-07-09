# encoding: utf-8
class Speciality < ActiveRecord::Base
  has_many :groups
  has_many :disciplines
  attr_accessible :spec_name, :spec_redaction, :spec_description , :spec_description2, :spec_exams

  validates_presence_of :spec_name, :on => :create, :message => "Вписать название специальности"
  validates_presence_of :spec_redaction, :on => :create, :message => "Вписать сокращение специальности"
end

#
#public def find_spec(id)
#            spec = Speciality.find_by_id(id)
#            #@speciality = Speciality.find(params[:id])
#       end
#
#public def find_spec_name(id)
#         sp_item = Speciality.find_spec(id)
#        sp_name = sp_item.spec_name
#  return sp_name
#       end