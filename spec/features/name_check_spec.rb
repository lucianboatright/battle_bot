require 'spec_helper'

feature "names have been added to page" do
  scenario "check new page has names" do
    sign_in_and_play
    expect(page).to have_content "Player_1 vs Player_2"
  end
end
