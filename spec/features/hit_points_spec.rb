feature 'In battle' do
  scenario 'Can see player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content('Adil: 60 HP')
  end

  scenario 'Can see that player 2 took damage after attack' do
    sign_in_and_play
    click_button("ATTACK!")
    click_button("Back to arena")
    expect(page).to have_content('Nick: 50 HP')
  end

  scenario 'Can see that player 1 took damage after attack' do
    sign_in_and_play
    click_button 'ATTACK!'
    click_button 'Back to arena'
    click_button 'ATTACK!'
    click_button 'Back to arena'
    expect(page).to have_content('Adil: 50 HP')
  end
end
