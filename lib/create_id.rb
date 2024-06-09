# class implementation for laying out details of individual
class CreateId
  attr_reader :names, :surname, :sex, :nationality, :race, :status, :id_number

  def initialize(names, surname, sex, nationality)
    @names = names.split(' ').map(&:capitalize)
    @surname = surname
    @sex = sex
    @nationality = nationality
    puts "all is well #{@names}"
  end

  def personal_info(race, status, id_number)
    @race = race
    @status = status
    @id_number = id_number
  end
end
