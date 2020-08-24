feature 'infastructure working' do
  scenario 'checks if the index page loads' do
    visit('/')
    expect(page).to have_content('Hello world!')
  end
end
