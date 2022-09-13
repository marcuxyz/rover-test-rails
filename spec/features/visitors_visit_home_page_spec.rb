feature "Visitors visit home page", type: :feature do
  scenario "successfully" do
    visit root_path

    expect(status_code).to eq 200
    expect(page).to have_content('Test Rover')
  end
  
  scenario "must view rover table" do
    visit root_path

    within 'table tbody tr:nth-child(1)' do
      expect(page).to have_content('25 de outubro, 2022')
      expect(page).to have_content('1 2 N')
      expect(page).to have_content('LMLMLMLMM')
      expect(page).to have_content('1 3 N')
    end

    within 'table tbody tr:nth-child(2)' do
      expect(page).to have_content('26 de outubro, 2022')
      expect(page).to have_content('3 3 E')
      expect(page).to have_content('MMRMMRMRRM')
      expect(page).to have_content('5 1 E')
    end
  end
end