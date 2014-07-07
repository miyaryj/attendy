module AttendeesHelper

  def count(attendees, ref)
  	ret = 0
  	attendees.each do |attendee|
  		if(attendee.attendance == ref)
  			ret += 1
  		end
  	end
  	return ret
  end

end
