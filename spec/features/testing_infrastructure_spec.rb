
feature 'Entering names' do
  scenario 'Fill names in form and submit the form' do
    visit ('/')
    fill_in :player1_name, with: 'Frank'
    fill_in :player2_name, with: 'Bea'
    click_button 'Submit'
    expect(page).to have_content 'Frank vs. Bea'
  end
end
