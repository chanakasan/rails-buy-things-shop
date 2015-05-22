require 'rails_helper'

feature 'Adding new products' do
    # As a user
    # I should be able to add new products
    # In order to introduce new products to users

    scenario 'adds a new product' do
        visit '/products'
        click_link('New Product')

        expect(page).to have_content('New Product')
        expect(page).to have_content('Name')
        expect(page).to have_content('Price')
    end
end
