require "httparty"

class ReqresAPI
  include HTTParty
  base_uri "https://reqres.in/api"

  def getResults()
    @getResults = self.class.get(
      "/users?page=2"
    )
  end
end