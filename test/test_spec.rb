require 'spec_helper'
feature 'Image test' do
  scenario 'See Page' do
    sleep(10)
    visit "http://env:3000/"
    expect(page).to have_content 'File'
    expect(page).to have_content 'Selection'
    expect(page).to have_content 'Go'
    expect(page).to have_content 'Terminal'
  end
end
