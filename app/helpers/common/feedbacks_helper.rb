module Common::FeedbacksHelper

  #def feedbacks
  #  Feedback.find(:all, :order => "created_at DESC")
  #end

  def feedback_by_type(feedback_type)
    feedbacks = nil
    case feedback_type
    when "all"
      feedbacks = Feedback.find(:all, :order => "created_at DESC")
    when "comment"
      feedbacks = Feedback.find(:all, :conditions => ["feedback_type_id = ?",1], :order => "created_at DESC")
    when "bug report"
      feedbacks = Feedback.find(:all, :conditions => ["feedback_type_id = ?",2], :order => "created_at DESC")
    when "change request"
      feedbacks = Feedback.find(:all, :conditions => ["feedback_type_id = ?",3], :order => "created_at DESC")
    when "new feature"
      feedbacks = Feedback.find(:all, :conditions => ["feedback_type_id = ?",4], :order => "created_at DESC")
    end
  end

end

