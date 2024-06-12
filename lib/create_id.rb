require 'colorize'
# class implementation for laying out details of individual
class CreateId
  attr_reader :names, :surname, :sex, :nationality, :race, :status, :id_number

  def initialize(names, surname, sex, nationality)
    @names = names.split(' ').map(&:capitalize)
    @surname = surname.capitalize
    @sex = sex.capitalize
    @nationality = nationality.capitalize
  end

  def personal_info(race, status, id_number)
    @race = race.capitalize
    @status = status.capitalize
    @id_number = id_number
    generate_id
  end

  def generate_id
    print "\n-----------------------------------------------------\n".colorize()
    print "|  Names: #{@names[0].colorize(:light_blue)} #{@names[1].colorize(:light_blue)}\n"
    print "|  Surname: #{@surname.colorize(:light_blue)}\n"
    print "|  Sex: #{@sex.colorize(:light_blue)}\n"
    print "|  Race: #{@race.colorize(:light_blue)}\n"
    print "|  Nationality: #{@nationality.colorize(:light_blue)}\n"
    print "|  Realtionship Status: #{@status.colorize(:light_blue)}\n"
    print "|  Identity number: #{@id_number.colorize(:light_blue)}\n"
    print " -----------------------------------------------------\n"
  end
end
