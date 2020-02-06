require './app'

feature "Give attack confirmation" do
  scenario 'P2 is hit' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'CapyBary attacked CapyBob'
  end
end