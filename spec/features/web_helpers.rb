def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'CapyBary'
    fill_in :player_2_name, with: 'CapyBob'
    click_button 'Submit'
end