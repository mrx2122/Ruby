class Station
	attr_reader :name,:trains
	def initialize(name)
		@name = name
		@trains = []
	end

	def take_train(train)
		@trains << train
	end
	
	def send_train(train)
		@trains.delete(train)
	end

	def trains_type(type)
		@trains.each do |train|
			unless train.type  != type 
				puts train
			end	
		end	
	end

end



class	Route
	attr_accessor :stations
	def initialize(firs_station,last_station) 
		@station = []
		@station << firs_station 
		@station << last_station
		
	end

	def hitch_station(station)
		@station.insert(-2, station) 
	end

	def del_station(station)
		@station.delete(station)
	end
end



class Train
  attr_accessor :speed,:quantity_car, :station
  attr_reader :route,:type,:number
  def initialize(number,type,quantity_car)
    @number = number
    @type = type
    @quantity_car = quantity_car
    @speed = 0
  end

  def pick_up_speed(speed)
    @speed += speed
  end

  def stop
    unless @speed <= 0 
	  @speed -= 10
    else 
	  puts "Скорость 0"
    end
    end
  def hitch
   if @speed == 0 
     @quantity_car += 1
	 quantity_car = @quantity_car
	 puts "Вагонов в поезде: #{quantity_car += 1}"
   else
     puts "Остановите поезд"
   end
   end
  def uncople
   if @speed == 0 
     puts "Вагонов в поезде: #{@quantity_car -= 1} "
   else
     puts "Остановите поезд"
   end
   end
  def route=(route)
  	@route = route
  	@station = route.station.first
  end
  def next_station
  	@route.station[@route.station.index(@station)+1]
  end
  def prev_station
  	@route.station[@route.station.index(@station)-1]
  end


end
