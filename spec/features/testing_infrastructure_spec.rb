
feature 'Entering names' do
  scenario 'Fill names in form and submit the form' do
    visit ('/')
    fill_in :player1_name, with: 'Frank'
    fill_in :player2_name, with: 'Bea'
    click_button 'Submit'
    expect(page).to have_content 'Frank vs. Bea'
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

feature 'See Hit Points' do
  scenario "Viewing player 2's hit points" do
    visit ('/')
    fill_in :player1_name, with: 'Frank'
    fill_in :player2_name, with: 'Bea'
    click_button 'Submit'
    expect(page).to have_content 'Bea: 50 points'
  end
end
