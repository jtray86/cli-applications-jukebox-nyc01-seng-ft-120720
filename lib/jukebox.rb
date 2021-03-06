
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


def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.strip
  song = nil
  songs.each_with_index do |song_name, index|
    
    if song_choice.to_i == index + 1 || song_name == song_choice
      song = song_name
     end
  end 
  if song
    puts "Playing #{song}"
    
  else 
    puts "Invalid input, please try again"
    
  end
  
end






def list (songs)
  songs.each_with_index do |song,index| 
    puts "#{(index + 1)}. #{song}"
  end
  
end


def exit_jukebox
  puts "Goodbye"
  
end  

def run(songs)
  
  puts "Please enter a command:"
  input = gets.strip
  while input != "exit"
    case input
    
      when "help"
       help
       puts "Invalid input, please try again"
        input = gets.strip
 
      when "list"
       list(songs)
       puts "Invalid input, please try again"
        input = gets.strip
  
      when "play"
       play(songs)
        puts "Invalid input, please try again"
        input = gets.strip
      else
        puts "Invalid input, please try again"
        input = gets.strip
    end
  end
  exit_jukebox
end

  
