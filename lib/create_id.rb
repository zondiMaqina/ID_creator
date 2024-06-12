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
    print "\n-----------------------------------------------------\n"
    print "|  Names: #{@names[0]} #{@names[1]}\n"
    print "|  Surname: #{@surname}\n"
    print "|  Sex: #{@sex}\n"
    print "|  Race: #{@race} \n"
    print "|  Nationality: #{@nationality}\n"
    print "|  Realtionship Status: #{@status}\n"
    print "|  Identity number: #{@id_number}\n"
    print " -----------------------------------------------------\n"
  end
end
