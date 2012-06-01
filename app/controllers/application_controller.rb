# encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  def captain(surname, name, secondname, group)
    @student = Student.find_by_sql("SELECT st.stud_captain FROM students st WHERE (st.stud_surname = " + surname + ") AND (st.stud_name="+ name+ ") AND (st.stud_secondname="+secondname+") AND (group_id ="+group+")")
    @capt = @student.stud_captain
  end

  def week_now
    if Date.today < ("01/09/"+Date.today.year.to_s).to_date
      sept=(("01/09/"+(Date.today.year-1).to_s).to_date)
      num_sept =sept.cweek%2
    else
      sept = ("01/09/"+Date.today.year.to_s).to_date
      num_sept = sept.cweek%2
    end

    if DateTime.parse(Time.now.to_s) < DateTime.parse("01/09/"+Date.today.year.to_s)
      dec = (("31/12/"+(Date.today.year-1).to_s).to_date).cweek
      jan = (("01/01/"+Date.today.year.to_s).to_date).cweek
      if num_sept == dec%2
        num_dec = 1
      else
        num_dec = 2
      end
      if dec == jan && dec%2 == 0
          if Date.today.cweek%2 == num_sept
              week = 1
          else
              week =2
              end
          else
            if dec%2 == num_sept
              num_dec = 1
            else
              num_dec = 2
          end
          if dec%2 == 1 && jan%2 ==1
              if num_dec == 1
                  week = 2
              else
                  week = 1
              end
              end
            end
      else
        if Date.today.cweek%2 == num_sept
          week = 1
        else
          week = 2
          end
      end
  end

  def pages_path(id, conname, actname)
    if signed_in?
      if conname == 'users' && actname == 'show'
        @page = ''
      else
        @page = user_path(id)
      end
    else
      @page = signin_path
    end
  end

  def list_calls
    @call = CellSked.all
  end

  def list_couples
    @couples = Couple.all
  end

  def couple_twoweek(gr, week, day)
    @couples = Couple.find_by_sql("SELECT cell_skeds.start_time AS time, disciplines.disc_name AS disc, Couples.couple_type AS type FROM couples INNER JOIN cell_skeds ON couples.cell_sked_id=cell_skeds.id INNER JOIN disciplines ON couples.discipline_id=disciplines.id WHERE (couples.group_id="+ gr +") AND (couples.couple_week="+ week + ") AND (couples.couple_dayweek="+day+")")
  end

  def event_list
    Event.find_by_sql("SELECT events.ev_date, cell_skeds.start_time, events.group_id, events.ev_text, events.ev_recipient FROM events INNER JOIN cell_skeds ON events.cell_sked_id = cell_skeds.id ORDER BY cell_skeds.start_time ASC")
  end

    def discipline(group)
    @group = Group.find_by_id(group)
    if Date.today < ("01/09/"+Date.today.year.to_s).to_date
      semester = @group.gr_course*2
    else
      semester = @group.gr_course*2-1
    end
    @disc = Discipline.find_by_sql("SELECT disc.id, disc.disc_name FROM disciplines disc WHERE (disc.specialty_id="+@group.speciality_id.to_s+") AND (disc.disc_semester="+semester.to_s+")")
  end

  helper_method :pages_path, :list_calls, :list_couples, :couple_twoweek, :week_now, :captain, :event_list, :discipline
end