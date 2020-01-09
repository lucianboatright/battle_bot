require 'spec_helper'
feature "names have been added to page" do
  scenario "check new page has names" do
    visit '/'
    fill_in 'player_1', with: 'Ria'
    fill_in 'player_2', with: 'Ria_2'
    click_button 'Submit'
    expect(page).to have_content "Ria vs Ria_2"
  end
end
