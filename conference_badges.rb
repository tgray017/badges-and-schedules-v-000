def badge_maker(name)
  "Hello, my name is #{name}."
end


def batch_badge_creator(names_array)
  badge_messages = []
  names_array.each {|name| badge_messages << badge_maker(name)}
  badge_messages
end


# original assign_rooms method

#  def assign_rooms_1(names_array)
#    room_assignments = []
#    index = 0
#    while index < 7
#      names_array.each do |name|
#        room = index + 1
#        room_assignments << "Hello, #{name}! You'll be assigned to room #{room}!"
#      index += 1
#      end
#    end
#    return room_assignments
#  end


# improved assign_rooms method

#  def assign_rooms_2(names_array)
#    room_assignments = []
#      names_array.each_with_index do |name, index|
#        room = index + 1
#        room_assignments << "Hello, #{name}! You'll be assigned to room #{room}!"
#      end
#    return room_assignments
#  end


# final assign_rooms method

def assign_rooms(names_array)
  names_array.each_with_index.collect do |name, index|
    room = index + 1
    "Hello, #{name}! You'll be assigned to room #{room}!"
  end
end


def printer(names_array)
  puts batch_badge_creator(names_array)
  puts assign_rooms(names_array)
end

# printer(["Tom", "Victoria", "Wilson", "Patrick", "Patti", "Duncan", "Cassandra"])
