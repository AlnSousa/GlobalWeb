class HomePage
    include Capybara::DSL

    def go
        visit "/"
    end

    def select_menu
        find('#w-dropdown-toggle-3').hover
        find('.nav_link_text', text: 'Jamcracker').click
    end

    def click_contato
        find('.cta08_button.w-button').click
    end
end  