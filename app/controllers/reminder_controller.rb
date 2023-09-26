class ReminderController < ApplicationController
  def index
    @reminder = Reminder.all
  end

  def new
    @reminder = Reminder.new
  end

  def create
    @reminder = current_user.reminder.build(reminder_params)

    if @reminder.save
      redirect_to @reminder, notice: 'Reminder was successfully created.'
    else
      render :new
    end

  end 

  def edit
     @reminder = Reminder.find(params[:id])
  end

  def reminder_params
     params.require(:reminder).permit(:date, :subject, :description, :email, :contact_number, :sms_no, :rec_next)
  end
  
end