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
    puts 'Please enter your relationship status'
    status = gets.chomp.downcase
    until status.include?('single') || status.include?('married')
      puts "\nPlease enter single/married"
      status = gets.chomp.downcase
    end
    status
  end

  def id_number
    puts "\nPlease enter your ID number"
    id_number = gets.chomp.gsub(' ', '')
    until id_number.length == 13
      puts "\nPlease enter a valid ID number"
      id_number = gets.chomp.downcase
    end
    id_number
  end

  def race
    puts 'Please enter your race'
    race = gets.chomp

    until race.downcase == 'black' || race.downcase == 'white'
      puts 'Please enter your race => black/white'
      race = gets.chomp
    end
    race
  end

  def individual_info
    puts "\nPERSONAL DETAILS"
    race
  end

  def basic_info
    minor_details = CreateId.new(names, surname, sex, nationality)
    minor_details.personal_info(individual_info, status, id_number)
  end
end

# use objects to give the createId class its arguments