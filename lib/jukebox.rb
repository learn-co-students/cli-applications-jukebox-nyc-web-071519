songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list (array)
  counter = 0 
  while array[counter]do
    puts "#{counter+1}. #{array[counter]}"
    counter +=1
  end
end
    
def play (array)
  puts "Please enter a song name or number:"
  reply = gets.chomp
  counter = 0 
  while array[counter] do
    if array[counter].include? reply
      puts "Playing #{array[counter]}"
    end
    counter += 1
  end
  puts "Invalid input, please try again"
end

def exit_jukebox
  puts "Goodbye"
end

def run(array) 
#  help
  puts "Please enter a command:"
  reply = gets.chomp
#  return reply
#  loop do 
  #until reply = "exit" 
    if reply == "help"
      help
    elsif reply == "list"
      return list(array)
    elsif reply == "play"
      return play(array)
    #else
    #  reply = "exit"
    end
 # end
  exit_jukebox
end
  










