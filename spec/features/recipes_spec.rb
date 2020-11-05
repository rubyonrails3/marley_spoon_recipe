require 'rails_helper'

RSpec.feature "Recipes", type: :feature do
  scenario 'Lists Recipes' do
    visit '/recipes'
    expect(page).to have_content('Recipes')
    expect(page).to have_css('.media')
  end

  scenario 'Selecting Indiviual Recipe' do
    visit '/recipes'
    click_link 'Crispy Chicken and Rice with Peas & Arugula Salad'
    expect(page).to have_content('Crispy Chicken and Rice with Peas & Arugula Salad')
    expect(page).to have_css('.tags')
    expect(page).to have_css('.description')
    expect(page).to have_css('.chef')
  end
end
