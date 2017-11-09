class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
  end

  def about
  end

  def contact
  end

  def thank_you
    @name = params[:name]
    @email = params[:email]
    @phone = params[:phone]
    @message = params[:message]
    ActionMailer::Base.mail(from: @email,
        to: 'kataliento@gmail.com',
        subject: "A new contact form message from #{@name}",
        body: @message).deliver_now
  end
end
