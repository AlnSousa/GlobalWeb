class ContactPage
    include Capybara::DSL

    def sucess_contact
        find('.c09_paragraph').text
    end
end