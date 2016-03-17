feature 'Enter names' do
  scenario 'Player name shows on screen' do
    sign_in_and_play
    expect(page).to have_content("Adil v Nick")
  end
end
