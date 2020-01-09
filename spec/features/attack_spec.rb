feature 'Attacking' do 
  scenario 'reduce Player 2 by 10 Hp' do
    sign_in_and_play
    click_button 'Attack'
    click_link 'OK'
    expect(page).not_to have_cintent 'Player_2: 100 Hp'
    expect(page).to have_content 'Player_2: 90 Hp'
  end
end