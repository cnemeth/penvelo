module Admin::FeedbacksHelper

  def feedback_types
    FeedbackType.all.collect {|feedback_type|[feedback_type.name,feedback_type.id]}
  end

end

