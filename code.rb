class Theater
  attr_reader :seats
  attr_accessor :patrons

  def initialize(number_of_seats)
    @seats = number_of_seats
    @patrons = 0
  end

  def admit!(people = 1)
    @people = people
    if @patrons + @people <= @seats
      @patrons = @patrons + @people
    else
      puts "There are not enough remaining seats to admit these patrons!"
      return @seats - @patrons
    end
  end

  def at_capacity?
    if @patrons === @seats
      true
    else
      false
    end
  end

  def record_walk_outs!(walk_out = 1)
    @walk_out = walk_out
    @patrons = @patrons - @walk_out
  end

end
