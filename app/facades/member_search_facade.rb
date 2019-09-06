class MemberSearchFacade

  def initialize(house)
    @house = house
  end

  def members
    services.members_by_house[:data].map do |result|
      Member.new(result)
    end
  end

  private

  def services
    @_services ||= WesterosService.new(@house)
  end
end
