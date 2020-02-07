# require './app'

feature "Show P2's hit points" do
  scenario 'show hit points' do
    sign_in_and_play
    expect(page).to have_content 'CapyBob: 200HP'
  end
end