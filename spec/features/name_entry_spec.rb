require 'spec_helper'
require 'capybara'

feature '#Start fight' do
  scenario '1.0 Fill in names' do
      visit('/')
      fill_in 'player1', with: "Terry"
      fill_in 'player2', with: "Ruff"
      click_button 'Play MOTHERS!'

      expect(page).to have_text("Terry V Ruff - GAME ON!!!")

  end
end
