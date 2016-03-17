feature 'Attacking' do

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content("Adil attacked Nick")
  end

  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content("Adil attacked Nick")
  end

end
