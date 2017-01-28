class PostDecorator < Draper::Decorator
  delegate_all

  def info
    "#{created_at.strftime('%H:%M %D')} by #{user.try(:first_name)} #{user.try(:last_name)}"
  end

end
