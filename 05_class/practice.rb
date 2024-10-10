# create a new Class, User, that has the following attributes:
#-name 
#-email
#-password 
class User
    attr_accessor :name, :email, :password
  
    def initialize(name, email, password)
      @name = name
      @email = email
      @password = password
    end
  end
  
# create a new Class, Room, that has the following attributes:
# - name
# - description
# - users
class user 
    attr_accessor :name ,:description, :users
    
    def initialize(name,description,users)
      @name = name
      @description = description
      @users =users
    end
  end  


# create a new Class, Message, that has the following attributes:
# - user
# - room
# - content
class Message 
    attr_accessor :user, :room, :content

    def initialize(user,room,content)
      @user = user 
      @room = room 
      @content = content
    end
  end   

# add a method to user so, user can enter to a room
# user.enter_room(room)
def enter_room(room)
  message = Message.new(self, room, "#{@name} enter the room.")
  puts message.content
end
end


# add a method to user so, user can send a message to a room
# user.send_message(room, message)
# user.ackowledge_message(room, message)
def send_message(room, message_content)
  message = Message.new(self, room, message_content)
  puts "#{@name} sent message to #{room.name}: #{message_content}"
  message
end

# add a method to a room, so it can broadcast a message to all users
# room.broadcast(message)
def acknowledge_message(room, message)
  acknowledgement = "Message from #{message.user.name} in #{room.name} acknowledged by #{@name}: #{message.content}"
  puts acknowledgement
  acknowledgement
end
end