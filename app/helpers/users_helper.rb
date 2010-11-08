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

   def officiers
    Position.find_by_name(['president',
                           'vice president',
                           'treasurer',
                           'secretary']).users
  end

  def board_chairman
    Position.find_by_name("board chairman").users
  end

  def board_members
    Position.find_by_name("board member").users
  end

  def directors
    Position.find_by_name(['director, uniforms',
                           'director, sponsorship',
                           'director, membership',
                           'director, athletics',
                           %{director, women's team},
                           'director, century and recreational rides',
                           'director, race, Burlingame Criterium',
                           'director, race, San Bruno Hill Climb']).users
  end

  def webmasters
    Position.find_by_name('webmaster').users
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

  def age(user)
    birthday = user.date_of_birth
    now = Time.now.utc.to_date
    now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

end

