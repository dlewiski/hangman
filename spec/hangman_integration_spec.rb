require 'capybara/rspec'
require './app'
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('game input', {:type => :feature}) do
  it('take in a letter and display it in both array outputs') do
    visit('/')
    fill_in('guess', :with => 'r')
    click_button('Submit!')
    expect(page).to have_content('r')
  end
end
