module ApplicationHelper

  def time_format(datetime)
    datetime.strftime("%l:%M %p") unless datetime.blank?
  end

end

