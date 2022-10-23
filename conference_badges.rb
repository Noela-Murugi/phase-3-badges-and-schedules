# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map{|name|badge_maker(name)}
end

def assign_rooms(attendee_room)
  attendee_room.map.with_index{
      |item,index|
      if index<7
          "Hello, #{item}! You'll be assigned to room #{index+1}!"
      end
}
end

def printer(attendees)
  attendee_badge=batch_badge_creator(attendees)
  room_assigned=assign_rooms(attendees)
  def display(data)
      data.each{|item|puts item}
  end
  display(attendee_badge)
  display(room_assigned)
end
printer(["Noela","Athi"])
