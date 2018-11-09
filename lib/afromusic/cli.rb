require 'colorize'

class Afromusic::CLI
    def call
       menu
    end
   #list all new music

    def lis_music
     Afromusic::Music.allMusic
     subMenu
    end

    def newMusic
        Afromusic::Music.newMusic
        subMenu
    end

    # welcome menu
    def menu
        puts "Welcome to Afro music!".yellow
        puts "please enter a number between 1 to 2 to choose an option"
        puts " 1: to list all music"
        puts " 2: to list only new music"
        puts " 3: to list only music from previous month"
        puts "exit to quit the application "
        
        choice = gets.strip.downcase
        case choice
        when "1"
            puts "HERE IS OUR  MUSICS:".yellow
            lis_music
        when "2"
            puts " HERE IS OUR NEW SONG:".yellow
            newMusic
            
        when "3"
            puts "HERE IS OUR LIST OF OLD MUSIC!".yellow
            listOldMusic
        when "exit"
            bye

        else
            puts "This is not a valide choice".red
            menu
        end
    end




    #say goodbye when exit
    def bye
     puts "thank you googbye!".yellow
    end


def subMenu
    puts "please enter a number between 1 to 2 to choose an option".yellow
        puts " 1: to go to the Main Menu"
        puts " 2: to quit the application "


        choice = gets.strip.downcase
        case choice
        when "1"
            menu
        when "2"
            bye

        else
            puts "This is not a valide choice".red
            subMenu
        end
end

def listOldMusic
    Afromusic::Music.oldMuic
    subMenu 
end


end