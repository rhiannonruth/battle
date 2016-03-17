feature 'Switching turns after attacking' do

  scenario 'Switch to Player 2 after Player 1 attacks' do
    sign_in_and_play
    click_button 'ATTACK!'
    click_button 'Back to arena'
    expect(page).to have_content("Nick's turn")
  end

end
