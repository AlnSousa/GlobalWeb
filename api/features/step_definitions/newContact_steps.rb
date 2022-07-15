When("I register a new user") do
    @post_url = "https://api-de-tarefas.herokuapp.com/contacts"
    @registerContact = HTTParty.post(@post_url, :headers => {'Content-Type': 'application/json'}, body: {
        "name": "Alandesson",
        "last_name": "Sousa",
        "email": "testaldsfsdfn@gmail.com",
        "age": "26",
        "phone": "11123324234",
        "address": "Rua um",
        "state": "São Paulo",
        "city": "São Paulo"
    }.to_json)
end

And("see {string} as code response") do |status_code|
 expect(@registerContact.response.code).to eql status_code
end
