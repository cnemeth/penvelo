module Admin::RacesHelper

  def race_disciplines
    RaceDiscipline.all.collect {|race_discipline|[race_discipline.name,race_discipline.id]}
  end



end

