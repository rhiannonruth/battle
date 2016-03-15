

feature 'Form takes name', :type => :feature do
  scenario 'Player name shows on screen' do
    visit('/')
    fill_in(:player1, with: 'Adil')
    fill_in(:player2, with: 'Nick')
    click_button 'submit'
    expect(page).to have_content("Adil v Nick")
  end
end
