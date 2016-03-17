def sign_in_and_play
	visit('/')
  fill_in :player1, with: "Terry"
  fill_in :player2, with: "Ruff"
  click_button "Let's PLAY!"
end

def one_round
	click_button "Attack"
	click_button "Finished"
end
