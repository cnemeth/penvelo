module Admin::SponsorsHelper

  def sponsor_types
    SponsorType.all.collect {|sponsor_type|[sponsor_type.name,sponsor_type.id]}
  end

end

