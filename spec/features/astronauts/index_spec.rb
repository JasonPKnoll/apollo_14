require 'rails_helper'

RSpec.describe "Astronauts Index" do
  before(:each) do
    @astronaut_1 = Astronaut.create!(name: "Tim", age: 28, job: "Mission Specialist")
    @astronaut_2 = Astronaut.create!(name: "Jenny", age: 35, job: "Pilot")
    @astronaut_3 = Astronaut.create!(name: "Chris", age: 32, job: "Payload Specialist")

    visit "/astronauts"
  end

  it "displays all astronauts with attributes" do
    expect(page).to have_content(@astronaut_1.name)
    expect(page).to have_content(@astronaut_1.age)
    expect(page).to have_content(@astronaut_1.job)

    expect(page).to have_content(@astronaut_2.name)
    expect(page).to have_content(@astronaut_2.age)
    expect(page).to have_content(@astronaut_2.job)

    expect(page).to have_content(@astronaut_3.name)
    expect(page).to have_content(@astronaut_3.age)
    expect(page).to have_content(@astronaut_3.job)
  end
end
