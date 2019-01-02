
feature 'Entering names' do
  scenario 'Fill names in form and submit the form' do
    sign_in_and_play
    expect(page).to have_content 'Frank vs. Bea'
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'See Hit Points' do
  scenario "Viewing player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Bea: 50 points'
  end
end

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'Win battle game' do
  scenario "Attack player 2, get confirmation" do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Frank has attacked Bea'
  end
end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10
#
feature 'Attacking, reducing player 2 points' do
  scenario 'reduce Player 2 points by 10' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_content 'Bea: 60 points'
    expect(page).to have_content 'Bea: 50 points'
  end
end
