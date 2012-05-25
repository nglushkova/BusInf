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

  helper_method :pages_path, :list_calls, :list_couples
end
