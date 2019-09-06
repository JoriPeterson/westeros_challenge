class Member
  attr_reader :name, :id

  def initialize(results = {})
    @name = results[:name]
    @id = results[:id]
  end  
end
