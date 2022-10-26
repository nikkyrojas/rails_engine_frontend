# frozen_string_literal: true
require 'rails_helper'

RSpec.describe 'Item index page' do
  it 'displays a list of merchants' do
    visit '/items'
    expect(page).to have_link('Item Qui Esse')
    expect(page).to have_link('Item Illo Facilis')
    expect(page).to have_link('Item Unde Sit')
  end
end
