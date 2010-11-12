module Common::FeedbacksHelper

  def feedbacks
    Feedback.find(:all, :order => "created_at DESC")
  end

  #def feedback_by_type(feedback_type)
  #  feedbacks = nil
  #  if feedback_type == "all"
  #    feedbacks = Feedback.find(:all, :order => "created_at DESC")
  #  else
  #    feedback_types = FeddbackType.all
  #    feedback_types.each do |f|
  #      if f.name == feedback_type
  #        feedbacks = Feedback.find(:all,
  #                                  :conditions => ["feedback_type_id = ?", f.id]
  #                                  :order => "created_at DESC")
  #  end
  #  feedbacks
  #end


end

