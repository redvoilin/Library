module BooksHelper
  def set_star average
  	num = average/2
  	case num
  	  when 0..1 then "<i class=\"icon active\"></i>"
  	  when 2..3 then "<i class=\"icon active\"></i>" * 2
  	  when 3..4 then "<i class=\"icon active\"></i>" * 3
  	  when 4..5 then "<i class=\"icon active\"></i>" * 4
  	end
  end

  def convert_status number
  	if number > 0
  	  "可借"
  	else
      "暂无"
  	end
  end

  def set_active_style current
    if current
      'active item'
    else
      'item'
    end
  end

  def show_borrowrecord_state status
    case status
      when 1 then "在借中"
      when 2 then "续借中"
      when 3 then "归还"
    end
  end
end
