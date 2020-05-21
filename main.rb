
require 'colorize'
#now we are making some changes


def puts_git(cmd)
  puts `git #{cmd} -h`
  menu
end
def menu
  puts 'Main Menu'.colorize(:magenta)
  puts '1: Enter git command'.colorize(:yellow)
  puts '2: Exit'.colorize(:cyan)
  choice = gets.to_i
  case choice
  when 1
    puts 'Enter git command'
    puts_git(gets.strip)
    menu
  when 2
    exit
  else
    puts 'Invalid choice'
    menu
  end
end
menu