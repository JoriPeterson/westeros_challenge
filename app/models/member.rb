class Member

  def initialize(results = {})
    @members = results[:attributes][:members]
    @name = @members.map { |member| member[:name]}
    @id = @members.map { |member| member[:id]}
  end
end
