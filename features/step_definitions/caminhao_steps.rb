Given('I am on the caminhoes page') do
  visit '/caminhaos'
  expect(page).to have_current_path('/caminhaos')
end

Then('I should be on the new Caminhao page') do
  visit '/caminhaos/new'
  expect(page).to have_current_path('/caminhaos/new')
end

Then('I must be on the caminhao page of {string}') do |string|
  caminhao = Caminhao.find_by(placa: string)

  visit caminhao_path(caminhao)
  expect(page).to have_current_path(caminhao_path(caminhao))
end

Then('I should be on the Editar Caminhao page of {string}') do |string|
  caminhao = Caminhao.find_by(placa: string)

  visit edit_caminhao_path(caminhao)
  expect(page).to have_current_path(edit_caminhao_path(caminhao))
end