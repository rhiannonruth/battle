require 'spec_helper'
require 'capybara'

feature 'Start fight' do
  scenario 'Fill in names' do
      visit('/')
      fill_in :player1, with: "Terry"
      fill_in :player2, with: "Ruff"
      click_button "Let's PLAY!"
      expect(page).to have_content("Terry VS Ruff - GAME ON!!!")
  end
  scenario "Viewing Player 2's Hit Points" do
      visit('/')
      fill_in :player1, with: "Terry"
      fill_in :player2, with: "Ruff"
      click_button "Let's PLAY!"
      expect(page).to have_content("Ruff: 100 Hit Points")
  end
end
