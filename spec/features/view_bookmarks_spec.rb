require 'pg'

feature 'view bookmarks' do
  scenario 'shows the bookmarks page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    Bookmarks.add_bookmark(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmarks.add_bookmark(url: 'http://www.destroyallsoftware.com', title: 'Destroy')

    visit('/bookmarks')

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Destroy', href: 'http://www.destroyallsoftware.com')
  end
end
