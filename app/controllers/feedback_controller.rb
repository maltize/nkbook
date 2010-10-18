class FeedbackController < ApplicationController

  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(params[:feedback])

    if @feedback.save
      UserMailer.deliver_feedback_email(@feedback)
      flash[:notice] = 'Wiadomość została wysłana. Dziękujemy.'
      redirect_to root_path
    else
      render :action => "new"
    end
  end

end
