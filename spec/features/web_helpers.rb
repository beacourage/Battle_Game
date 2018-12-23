def sign_in_and_play
  visit ('/')
  fill_in :player1_name, with: 'Frank'
  fill_in :player2_name, with: 'Bea'
  click_button 'Submit'
end
