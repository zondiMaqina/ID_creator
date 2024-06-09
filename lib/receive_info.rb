require_relative 'create_id'
# class implementation for recievng info from individual
class RecieveInfo
  def initialize
    super
    puts 'WELCOME USER!!! LET US CREATE YOUR INFORMATION IDENTITY (I.D), eneter some details below'
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
  end

  def nationality
    puts "\nPlease eneter your nationality"
    gets.chomp
  end

  def basic_info
    CreateId.new(names, surname, sex, nationality)
  end
end
