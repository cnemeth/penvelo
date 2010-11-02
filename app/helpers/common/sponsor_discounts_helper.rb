module Common::SponsorDiscountsHelper

  def sponsor_discounts(sponsor_name)
    SponsorDiscount.find(:all, :conditions => "sponsor_id = #{Sponsor.find(:first, :conditions => "name = 'sponsor_name'").id}")
  end

end

