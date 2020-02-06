require './app'

feature "Show P2's hit points" do
  scenario 'show hit points' do
    visit('/')
    fill_in :player_1_name, with: 'CapyBary'
    fill_in :player_2_name, with: 'CapyBob'
    click_button 'Submit'
    expect(page).to have_content 'CapyBob has 200 HP'
  end
end