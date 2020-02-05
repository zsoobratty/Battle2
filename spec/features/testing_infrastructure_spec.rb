require './app'

feature Battle do

  scenario 'Can run app and check page' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end