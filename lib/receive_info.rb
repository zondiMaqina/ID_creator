require_relative 'create_id'
# class implementation for recievng info from individual
class RecieveInfo
  def initialize
    super
    puts 'WELCOME USER!!! LET US CREATE YOUR INFORMATION IDENTITY (I.D), Enter some details below'
    basic_info
  end

  private

  def names
    puts 'Please enter your name(s)'
    gets.chomp
  end

  def surname
    puts "\nPlease enter your surname"
    gets.chomp
  end

  def sex
    puts "\nplease enter your gender male/female"
    sex = gets.chomp
    until sex.include?('male') || sex.include?('female')
      puts "\nplease enter male/female"
      sex = gets.chomp
    end
    sex
  end

  def nationality
    puts "\nPlease eneter your nationality"
    gets.chomp
  end

  def status
    puts 'Please enter your status'
    status = gets.chomp.downcase
    until status.include?('single') || status.include?('married')
      puts "\nPlease enter single/married"
      status = gets.chomp.downcase
    end
    status
  end

  def basic_info
    CreateId.new(names, surname, sex, nationality)
    individual_info
  end

  def id_number
    puts "\nPlease enter your ID number"
    id_number = gets.chomp.gsub(' ', '')
    until id_number.length == 13
      puts "\nPlease enter a valid ID number"
      status = gets.chomp.downcase
    end
    status
  end

  def individual_info
    puts "\nPERSONAL DETAILS"
    puts 'Please enter your race'
    race = gets.chomp
    relationship_status = status
    number = id_number
    CreateId.personal_info(race, relationship_status, number)
  end
end
