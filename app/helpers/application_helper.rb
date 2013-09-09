module ApplicationHelper

  def flash_class(level)
    case level
    when :notice then "success"
    when :danger then "danger"
    when :alert then "info"
    end
  end

end