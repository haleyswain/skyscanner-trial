class GetFlight

  def initialize(country, currency, locale, originPlace, destinationPlace, outboundPartialDate, inboundPartialDate)
    @country = country
    @currency = currency
    @locale = locale
    @originPlace = originPlace
    @destinationPlace = destinationPlace
    @outboundPartialDate = outboundPartialDate
    @inboundPartialDate = inboundPartialDate
  end

  def get_flight
    response=HTTParty.get("http://partners.api.skyscanner.net/apiservices/browsedates/v1.0/#{@country}/#{@currency}/#{@locale}/#{@originPlace}/#{@destinationPlace}/#{@outboundPartialDate}/#{@inboundPartialDate}??apikey=#{ENV['apikey']}")
    response["Dates"]["OutboundDates"]
    end
  end
