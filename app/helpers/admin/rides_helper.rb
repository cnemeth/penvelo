module Admin::RidesHelper

  def ride_types
    RideType.all.collect {|ride_type|[ride_type.name,ride_type.id]}
  end

  def days_of_the_week
    [
    ['Monday'],
    ['Tuesday'],
    ['Wednesday'],
    ['Thursday'],
    ['Friday'],
    ['Saturday'],
    ['Sunday'],
    ]
  end

end

