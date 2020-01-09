require 'spec_helper'

def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Ria'
  fill_in 'player_2', with: 'Ria_2'
  click_button 'Submit'
end
