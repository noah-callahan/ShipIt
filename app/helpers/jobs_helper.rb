module JobsHelper

  def ships_array
    arr = []
    Ship.all.each do |ship|
      arr << [ship.name, ship.id]
    end
    return arr
  end

end
