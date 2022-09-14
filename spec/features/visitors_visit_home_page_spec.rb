feature "Visitors visit home page", type: :feature do
  scenario "successfully" do
    visit root_path

    expect(status_code).to eq 200
    expect(page).to have_content('Test Rover')
  end
  
  scenario "and send test rover file" do
    travel_to(Time.zone.local(2022, 10, 26)) do
      visit root_path
      attach_file 'File', 'spec/fixtures/rover.txt'
      click_on 'Enviar'
    end
    
    expect(current_path).to eq root_path
    expect(page).to have_content('Arquivo enviado com sucesso!')
    within 'table tbody tr:nth-child(1)' do
      expect(page).to have_content('26 de outubro, 2022')
      expect(page).to have_content('1 3 N')
    end
    within 'table tbody tr:nth-child(2)' do
      expect(page).to have_content('26 de outubro, 2022')
      expect(page).to have_content('5 1 E')
    end
  end
end