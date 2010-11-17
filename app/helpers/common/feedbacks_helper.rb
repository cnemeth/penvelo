module Common::FeedbacksHelper

  def feedbacks
    Feedback.find(:all, :order => "created_at DESC")
  end

end

