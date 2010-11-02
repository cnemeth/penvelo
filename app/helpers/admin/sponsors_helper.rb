module Admin::SponsorsHelper

  def sponsors
    Sponsor.all
  end

  def sponsor_types
    SponsorType.all.collect {|sponsor_type|[sponsor_type.name,sponsor_type.id]}
  end

  def discounts_url
    "http://localhost:3000/club_discounts"
  end

end

