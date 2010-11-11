module Admin::RaceResultsHelper

  def placements(place)
    count = 0
    placements = RaceResult.find(:all, :conditions => ["placement <= ?", place])
    placements.each do |f|
      if f.updated_at.year == Time.now.year
        count = count + 1
      end
    end
    count
  end

end

