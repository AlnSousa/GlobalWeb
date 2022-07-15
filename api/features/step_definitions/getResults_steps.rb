req_api = ReqresAPI.new

When("I make get request on the endpoint") do
  @result = req_api.getResults
end

And("see {string} as StatusCode") do |status_code|
  expect(@result.response.code).to eql status_code
end

Then("I show the id and name") do
  data = @result.parsed_response["data"]
  data.each do |item|
  puts item["id"]
  puts item["first_name"]
  end
end
