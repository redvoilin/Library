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
end
