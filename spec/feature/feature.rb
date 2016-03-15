require 'spec_helper'
require 'app'

feature '#Start fight' do
  scenario '1.0 Fill in names' do
      fill_in 'player 1', with: "Terry"
      fill_in 'player 2', with: "Ruff"
      click_button 'Play MOTHERS!'

      expect(page).to have_text("Terry V Ruff - GAME ON!!!")

  end
end
