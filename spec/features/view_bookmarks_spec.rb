feature 'view bookmarks' do
  scenario 'shows the bookmarks page' do
    visit('/bookmarks')
    expect(page).to have_content("http://www.reddit.com")
    expect(page).to have_content("http://www.27bslash6.com")
  end
end
