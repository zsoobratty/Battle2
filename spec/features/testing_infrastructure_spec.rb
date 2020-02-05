require './app'

feature Battle do

  scenario 'Can run app and check page' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end

  scenario 'Capybaras can enter there names' do
    visit('/Battle')
    fill_in 'Player 1', with: 'CapyBary'
    fill_in 'Player 2', with: 'CapyBob'
    expect(page).to have_content (/CapyBary.+CapyBob/)
  end

end
