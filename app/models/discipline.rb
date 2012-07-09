# encoding: utf-8
class Discipline < ActiveRecord::Base
  has_many :formation_of_competences          , :dependent => :destroy
  has_many :interim_attestations           , :dependent => :destroy
  has_many :module_of_disciplines   , :dependent => :destroy
  has_many :themes
  #, :through => :module_of_disciplines
  has_many :couples
  belongs_to :speciality
  has_many :materials
  validates_presence_of :disc_name, :on => :create, :message => "Вписать название дисциплины"
  validates_presence_of :speciality_id, :on => :create, :message => "Выбрать специальность/направление подготовки"
  validates_presence_of :disc_semester, :on => :create, :message => "Вписать семестр преподавания"
  validates_presence_of :disc_course, :on => :create, :message => "Вписать курс преподавания"


  accepts_nested_attributes_for :module_of_disciplines, :allow_destroy => true

end

#accepts_nested_attributes_for :module_of_disciplines, :allow_destroy => true, :reject_if => lambda { |a| a[:content].blank? }


#has_attached_file :mfile

#public def publish_program(text)
#
#         m = File.new('app/assets/prog.html','a')
#         m.puts(text)
#
#         m.close
#
#
#       end
