module UsersHelper

  def positions
    Position.all.collect {|position|[position.name, position.id]}
  end

  def race_disciplines
    RaceDiscipline.all.collect {|race_discipline|[race_discipline.name, race_discipline.id]}
  end

  def race_categories
    RaceCategory.all.collect  {|race_category|[race_category.name, race_category.id]}
  end

  def member_roles(ids)
    role_ids = Role.find_all_by_id(ids)
    roles = []
    role_ids.each do |r|
      roles.push( r.name )
    end
    roles.join(", ")
  end

  def member_positions(ids)
    position_ids = Position.find_all_by_id(ids)
    positions = []
    position_ids.each do |p|
      positions.push( p.name )
    end
    positions.join(", ")
  end

  def member_race_disciplines(ids)
    race_discipline_ids = RaceDiscipline.find_all_by_id(ids)
    race_disciplines = []
    race_discipline_ids.each do |r|
      race_disciplines.push(r.name)
    end
    race_disciplines.join(", ")
  end

  def member_race_categories(ids)
    race_category_ids = RaceCategory.find_all_by_id(ids)
    race_categories = []
    race_category_ids.each do |r|
      race_categories.push(r.name)
    end
    race_categories.join(", ")
  end

end

