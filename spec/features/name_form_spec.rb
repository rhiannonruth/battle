

feature 'Enter names' do
  scenario 'Player name shows on screen' do
    sign_in_and_play
    expect(page).to have_content("Adil v Nick")
  end
end

feature 'In battle' do
  scenario 'Can see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Nick: 60 HP')
  end
end
