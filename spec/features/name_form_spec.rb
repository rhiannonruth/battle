

feature 'Form takes name', :type => :feature do
  scenario 'Player name shows on screen' do
    visit('/')
    fill_in(:Player1, with: 'Adil')
    fill_in(:Player2, with: 'Nick')
    click_button 'Submit'
    expect(page).to have_content("Adil v Nick")
  end
end
