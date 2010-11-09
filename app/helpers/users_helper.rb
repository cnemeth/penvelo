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
    #positions = ['president', 'vice president', 'treasurer', 'secretary']
    officiers = {
      'president'       =>  Position.find_by_name('president').users,
      'vice president'  =>  Position.find_by_name('vice president').users,
      'treasurer'       =>  Position.find_by_name('treasurer').users,
      'secretary'       =>  Position.find_by_name('secretary').users
    }
    #officiers.push(Position.find_by_name('president').users)
    #officiers.push(Position.find_by_name('vice president').users)
    #officiers.push(Position.find_by_name('treasurer').users)
    #officiers.push(Position.find_by_name('secretary').users)


  end

  def presidents
    Position.find_by_name("president").users
  end

  def vice_presidents
    Position.find_by_name("vice president").users
  end

  def treasurers
    Position.find_by_name("treasurer").users
  end

  def secretaries
    Position.find_by_name("secretary").users
  end

  def board_chairman
    Position.find_by_name("board chairman").users
  end

  def board_members
    Position.find_by_name("board member").users
  end

  def director_uniforms
    Position.find_by_name("director, uniforms").users
  end

  def director_sponsorhip
    Position.find_by_name("director, sponsorship").users
  end

  def director_membership
    Position.find_by_name("director, membership").users
  end

  def director_athletics
    Position.find_by_name("director, athletics").users
  end

  def director_women
    Position.find_by_name("director, women's team").users
  end

  def director_century
    Position.find_by_name("director, century and recreational rides").users
  end

  def director_burlingame
    Position.find_by_name("director, race, Burlingame Criterium").users
  end

  def director_sanbruno
    Position.find_by_name("director, race, San Bruno Hill Climb").users
  end

  def directors
    directors = []
    positions = ['director, uniforms',
                 'director, sponsorship',
                 'director, membership',
                 'director, athletics',
                 %{director, women's team},
                 'director, century and recreational rides',
                 'director, race, Burlingame Criterium',
                 'director, race, San Bruno Hill Climb']

    positions.each do |p|
      directors.push(Position.find_by_name(p).users)
    end

    directors
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

