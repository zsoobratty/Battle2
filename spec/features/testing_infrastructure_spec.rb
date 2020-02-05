require './app'

# feature Battle do
#   scenario 'Can run app and check page' do
#     visit('/')
#     expect(page).to have_content "Testing infrastructure working!"
#   end
# end

  # scenario 'Capybaras can enter there names' do
  #   visit('/Battle')
  #   fill_in 'Player 1', with: ''
  #   fill_in 'Player 2', with: ''
  #   expect(page).to have_content (/CapyBary.+CapyBob/)
  # end
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'CapyBary'
    fill_in :player_2_name, with: 'CapyBob'
    click_button 'Submit'
    expect(page).to have_content 'CapyBary vs. CapyBob'
  end
end

