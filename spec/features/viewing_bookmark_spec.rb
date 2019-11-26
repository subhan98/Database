# require '../spec_helper'

feature 'Viewing bookmarks' do
  scenario 'user can see bookmarks' do
    visit('/bookmarks')
    # expect(page).to have_content 'Bookmark Manager'
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
