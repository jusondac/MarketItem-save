module ApplicationHelper
  def day_of(date)
    date.strftime("%A")
  end

  def flash_class(type)
    case type
    when "alert"
      "alsert-danger"
    when "notice"
      "alert-success"
    else
      ""
    end
  end
end
