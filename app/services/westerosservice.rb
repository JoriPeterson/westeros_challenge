class WesterosService

	def initialize(house)
		@house = house
	end

	def members_by_house
		get_json("/api/v1/house/#{house}")
	end

	private

	def conn
		Faraday.new('http://westerosapi.herokuapp.com') do |f|
			f.params['api_key'] = ENV["WESTEROS_KEY"]
			f.adapter Faraday.default_adapter
		end
	end

	def get_json(url)
		response = conn.get(url)
		JSON.parse(response.body, symbolize_names: true)
	end
end
