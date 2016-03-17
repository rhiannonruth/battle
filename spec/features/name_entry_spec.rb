require 'spec_helper'
require 'capybara'

feature 'Start fight' do
  scenario 'Fill in names' do
    sign_in_and_play
    expect(page).to have_content("Terry VS Ruff - GAME ON!!!")
  end
  scenario "Viewing Player 2's Hit Points" do
    sign_in_and_play
    expect(page).to have_content("Ruff: 100 HP")
  end
end
