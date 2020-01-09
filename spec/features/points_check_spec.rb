require 'spec_helper'


feature 'Battle bots' do
  scenario 'Checks hp is on page' do
    visit '/'
    fill_in 'player_1', with: 'Ria'
    fill_in 'player_2', with: 'Ria_2'
    click_button 'Submit'
    expect(page).to have_content "Ria : 100 Hp"
    expect(page).to have_content "Ria_2 : 100 Hp"
  end
end