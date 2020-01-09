require 'spec_helper'

def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Player_1'
  fill_in 'player_2', with: 'Player_2'
  click_button 'Submit'
end
