

feature 'Form takes name' , :type => :feature do
  scenario 'Player name shows on screen' do
    visit('/')
    fill_in(:player1, with: 'Adil')
    fill_in(:player2, with: 'Nick')
    click_button 'submit'
    expect(page).to have_content("Adil v Nick")
  end

  scenario 'Can see player 2 hit points' do
    visit('/')
    fill_in(:player1, with: 'Adil')
    fill_in(:player2, with: 'Nick')
    click_button 'submit'
    expect(page).to have_content('Nick - 60 hit points')

  end

end
