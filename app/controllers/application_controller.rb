class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

  def pages_path(id, conname, actname)
    if signed_in?
      if conname == 'users' && actname == 'show'
        @page = ''
      else
        @page = 'users/' + id.to_s
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
    @couples = Couple.find_by_sql("SELECT cell_skeds.start_time AS time, disciplines.disc_name AS disc FROM couples INNER JOIN cell_skeds ON couples.cell_sked_id=cell_skeds.id INNER JOIN disciplines ON couples.discipline_id=disciplines.id WHERE (couples.group_id="+ gr +") AND (couples.couple_week="+ week + ") AND (couples.couple_dayweek="+day+")")
  end

  helper_method :pages_path, :list_calls, :list_couples, :couple_twoweek
end
