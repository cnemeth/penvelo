module Admin::RacesHelper

  def race_disciplines
    RaceDiscipline.all.collect {|race_discipline|[race_discipline.name,race_discipline.id]}
  end

  def race_categories
    RaceCategory.all.collect {|race_category|[race_category.name,race_category.id]}
  end

end

