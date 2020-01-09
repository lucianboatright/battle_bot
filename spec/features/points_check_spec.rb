require 'spec_helper'


feature 'Battle bots' do
  scenario 'Checks hp is on page' do
    sign_in_and_play
    expect(page).to have_content "Ria : 100 Hp"
    expect(page).to have_content "Ria_2 : 100 Hp"
  end
end