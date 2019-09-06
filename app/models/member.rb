class Member
  attr_reader :name, :id

  def initialize(members = {})
    @name = members[:name]
    @id = members[:id]
  end
end
