module UsersHelper

  def roles
    Role.all.collect {|role|[role.name, role.id]}
  end

  def race_disciplines
    RaceDiscipline.all.collect {|race_discipline|[race_discipline.name, race_discipline.id]}
  end

  def race_categories
    RaceCategory.all.collect  {|race_category|[race_category.name, race_category.id]}
  end

  def member_roles(ids)
    role_ids = Role.find_all_by_id(ids)
    roles = ""
    role_ids.each do |r|
      roles += r.name + ", "
    end
    roles
  end

  def member_race_disciplines(ids)
    race_discipline_ids = RaceDiscipline.find_all_by_id(ids)
    race_disciplines = ""
    race_discipline_ids.each do |r|
      race_disciplines += r.name + ", "
    end
    race_disciplines
  end

  def member_race_categories(ids)
    race_category_ids = RaceCategory.find_all_by_id(ids)
    race_categories = ""
    race_category_ids.each do |r|
      race_categories += r.name + ", "
    end
    race_categories
  end

end

