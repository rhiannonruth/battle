require 'spec_helper'
require 'capybara'

feature 'Attack' do

	scenario "player 2" do
		sign_in_and_play
		click_button "Attack2"
		expect(page).to have_content("Terry has hit Ruff!")
	end

	scenario "player 1" do
		sign_in_and_play
		click_button "Attack1"
		expect(page).to have_content("Ruff has hit Terry!")
	end
end
