class FlightController < ApplicationController

  def index
    flight_object = GetFlight.new("US", "USD", "english", "SFO", "NYC", "anytime", "anytime")
    @flight = flight_object.get_flight()
  end
end
