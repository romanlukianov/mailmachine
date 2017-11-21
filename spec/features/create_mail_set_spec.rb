require 'rails_helper'

feature 'Create mail set', %q{
 	In order to create mails
 	As an authenticated user
 	I want to be able to create mail sets
} do

  given(:user) { create(:user) }

  scenario 'Authenticated user creates mail set' do
    sign_in user

    visit mail_sets_path
    click_on 'Create'
    fill_in 'Name', with: 'Test mail set'
    fill_in 'Addressee', with: 'test@test.com'
    click_on 'Create'

    expect(page).to have_content 'Your mailset successfully created.'
  end

  scenario 'Non-authenticated user creates mailset' do
    visit mail_sets_path

    expect(page).to have_content 'You need to sign in or sign up before continuing.'
  end

end