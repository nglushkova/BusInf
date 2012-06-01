# encoding: utf-8
class Speciality < ActiveRecord::Base
  has_many :groups
  has_many :disciplines
  attr_accessible :spec_name, :spec_redaction, :spec_description

  validates :spec_name, :presence => true, :length => {:maximum => 150}
  validates :spec_redaction, :presence => true, :length => {:maximum => 6}
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