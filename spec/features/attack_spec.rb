require 'spec_helper'
require 'capybara'

feature 'Attack' do

	scenario "notification that player 2 has been hit" do
		sign_in_and_play
		click_button "Attack2"
		expect(page).to have_content("Terry has hit Ruff!")
	end

	scenario "player 2's HP reduces" do
		sign_in_and_play
		click_button "Attack2"
		expect(page).to have_content("Terry: 100 Hit Points VS Ruff: 90 Hit Points")
	end

	scenario "notification that player 1 has been hit" do
		sign_in_and_play
		click_button "Attack1"
		expect(page).to have_content("Ruff has hit Terry!")
	end

	scenario "player 1's HP reduces" do
		sign_in_and_play
		click_button "Attack1"
		expect(page).to have_content("Terry: 90 Hit Points VS Ruff: 100 Hit Points")
	end
end
