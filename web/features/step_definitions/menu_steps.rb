When("I visit gwcloud site") do
    @home_page.go
end

And("I click Jamcracker on menu") do
  @home_page.select_menu
end

And("I click on Fale Conosco") do
  @home_page.click_contato
end

Then("I see {string} as contact info") do |contact_info|
  expect(@contact_page.sucess_contact).to eql contact_info
end
