require 'spec_helper'


feature 'Battle bots' do
  scenario 'Checks hp is on page' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Player_1 Attacks Player_2"
  end
end