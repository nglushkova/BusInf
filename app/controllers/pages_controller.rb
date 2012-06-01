# encoding: utf-8
class PagesController < ApplicationController
  def home
    @title = "О кафедре"
  end

  def contact
    @title = "Контакты"
  end

  def teacherpage
    @title = "Преподавательский состав"
  end

  def bi
    @title = "Бизнес-информатика"
  end

  def pi
    @title = "Прикладная информатика"
  end

end
