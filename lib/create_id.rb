# class implementation for laying out details of individual
class CreateId
  attr_reader :names, :surname, :sex, :nationality, :race, :status, :id_number

  def initialize(names, surname, sex, nationality)
    @names = names.split(' ').map(&:capitalize)
    @surname = surname.capitalize
    @sex = sex.capitalize
    @nationality = nationality.capitalize
  end

  def self.personal_info(race, status, id_number)
    @race = race.capitalize
    @status = status.capitalize
    @id_number = id_number
  end

  def self.generate_id
    puts ' ---------------------------------------------'
    puts "|  Names: #{@names[0]} #{@names[1]}           |" 
    puts "|  Surname: #{@surname}                       |"
    puts "|  Sex: #{@sex}                               |"
    puts "|  Race: #{@race}                             |"
    puts "|  Status: #{@status}                         |"
    puts "|  Identity number: #{@id_number}             |"
    puts ' ---------------------------------------------'
  end
end
