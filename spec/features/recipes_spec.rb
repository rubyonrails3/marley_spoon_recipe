require 'rails_helper'

RSpec.feature "Recipes", type: :feature do
  scenario 'Lists Recipes' do
    visit '/recipes'
    expect(page).to have_content('Recipes')
    expect(page).to have_css('.media')
  end
end
