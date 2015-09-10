require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the triangle path') do
  it('tells the user that their triangle is equilateral', {:type => :feature}) do
    visit('/')
    fill_in('side1', :with => 5)
    fill_in('side2', :with => 5)
    fill_in('side3', :with => 5)
    click_button('Submit')
    expect(page).to(have_content('Your triangle is equilateral!'))
  end
  
  it('tells the user that their triangle is isosceles', {:type => :feature}) do
    visit('/')
    fill_in('side1', :with => 5)
    fill_in('side2', :with => 5)
    fill_in('side3', :with => 2)
    click_button('Submit')
    expect(page).to(have_content('Your triangle is isosceles!'))
  end
  
  it('tells the user that their triangle is scalene', {:type => :feature}) do
    visit('/')
    fill_in('side1', :with => 5)
    fill_in('side2', :with => 3)
    fill_in('side3', :with => 4)
    click_button('Submit')
    expect(page).to(have_content('Your triangle is scalene!'))
  end
  
  it('tell the user that given side lengths do not make a triangle', {:type => :feature}) do
    visit('/')
    fill_in('side1', :with => 34)
    fill_in('side2', :with => 4)
    fill_in('side3', :with => 3)
    click_button('Submit')
    expect(page).to(have_content('This is no triangle!'))
  end
end