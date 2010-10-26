module Admin::RidesHelper

  def ride_types
    RideType.all.collect {|ride_type|[ride_type.name,ride_type.id]}
  end

end

