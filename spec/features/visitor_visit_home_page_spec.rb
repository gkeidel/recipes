require 'rails_helper'

feature 'Visitor visit home page' do
  scenario 'successfully' do
    visit root_path

    expect(page).to have_content('Cook Now')
    expect(page).to have_content('Boas vindas ao sistema de gestão de refeições!')
  end
end
