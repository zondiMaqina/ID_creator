require_relative 'create_id'
require 'colorize'
# class implementation for recievng info from individual
class RecieveInfo
  def initialize
    super
    puts 'WELCOME USER!!! LET US CREATE YOUR INFORMATION IDENTITY (I.D), Enter some details below'.colorize(:light_yellow)
    basic_info
  end

  private

  def names
    puts 'Please enter your name(s)'.colorize(:green)
    gets.chomp
  end

  def surname
    puts "\nPlease enter your surname".colorize(:green)
    gets.chomp
  end

  def sex
    puts "\nplease enter your gender male/female".colorize(:green)
    sex = gets.chomp
    until sex.include?('male') || sex.include?('female')
      puts "\nplease enter male/female".colorize(:green)
      sex = gets.chomp
    end
    sex
  end

  def nationality
    puts "\nPlease eneter your nationality".colorize(:green)
    gets.chomp
  end

  def status
    puts 'Please enter your relationship status'.colorize(:green)
    status = gets.chomp.downcase
    until status.include?('single') || status.include?('married')
      puts "\nPlease enter single/married".colorize(:green)
      status = gets.chomp.downcase
    end
    status
  end

  def id_number
    puts "\nPlease enter your ID number".colorize(:green)
    id_number = gets.chomp.gsub(' ', '')
    until id_number.length == 13
      puts "\nPlease enter a valid ID number".colorize(:green)
      id_number = gets.chomp.downcase
    end
    id_number
  end

  def race
    puts 'Please enter your race'.colorize(:green)
    race = gets.chomp

    until race.downcase == 'black' || race.downcase == 'white'
      puts 'Please enter your race => black/white'.colorize(:green)
      race = gets.chomp
    end
    race
  end

  def individual_info
    puts "\nPERSONAL DETAILS".colorize(:red)
    race
  end

  def basic_info
    minor_details = CreateId.new(names, surname, sex, nationality)
    minor_details.personal_info(individual_info, status, id_number)
  end
end

# use objects to give the createId class its arguments