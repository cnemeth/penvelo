module Common::SponsorsHelper

  def sponsors
    Sponsor.all
  end

  def sponsor_types
    SponsorType.all
  end
end

