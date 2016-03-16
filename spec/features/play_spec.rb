feature 'Attack 1' do
  scenario 'attacks player 2' do
  sign_in_and_play
  click_button 'ATTACK!'
  expect(page).to have_content("You attacked player 2.")
  end
end
