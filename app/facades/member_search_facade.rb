class MemberSearchFacade

  def initialize(house)
    @house = house
  end

  def members
    services.members_by_house[:data][0][:attributes][:members].map do |result|
      Member.new(result)
    end
  end

  private

  def services
    @_services ||= WesterosService.new(@house)
  end
end
