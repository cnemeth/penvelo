module Admin::SponsorDiscountsHelper

  def sponsors
    Sponsor.all.collect {|sponsor|[sponsor.name,sponsor.id]}
  end

end

