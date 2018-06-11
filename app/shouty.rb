require_relative 'coordinate'

class Shouty
    MESSAGE_RANGE = 1000

    def initialize
      @locations = {}
      @shouts = {}
    end

    def set_location(person, location)
      @locations[person] = location
    end

    def shout(person, shout)
      @shouts[person] ||= [ ]
      @shouts[person].push(shout)
    end

    def shouts_heard_by(listener)
      shoutsHeard = {}

      @shouts.each do |shouter, personsShouts|
        if shouter == listener
          return {}
        else
          distance = @locations[listener].distance_from(@locations[shouter])
          if distance < MESSAGE_RANGE
            shoutsHeard[shouter] = personsShouts
          end
        end
      end
      shoutsHeard
    end
end
