feature "losing" do
  scenario 'display losing screen when player 2 loses' do
    sign_in_and_play
    attack_until_dead
    expect(page).to have_content 'NICK DIED! lol'
  end
end
