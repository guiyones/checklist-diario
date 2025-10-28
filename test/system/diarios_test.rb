require "application_system_test_case"

class DiariosTest < ApplicationSystemTestCase
  setup do
    @diario = diarios(:one)
  end

  test "visiting the index" do
    visit diarios_url
    assert_selector "h1", text: "Diarios"
  end

  test "should create diario" do
    visit diarios_url
    click_on "New diario"

    check "Alcool" if @diario.alcool
    check "Alimentacao" if @diario.alimentacao
    fill_in "Data", with: @diario.data
    fill_in "Dia semana", with: @diario.dia_semana
    check "Estudo" if @diario.estudo
    check "Exercicio" if @diario.exercicio
    check "Leitura" if @diario.leitura
    fill_in "Pontos", with: @diario.pontos
    click_on "Create Diario"

    assert_text "Diario was successfully created"
    click_on "Back"
  end

  test "should update Diario" do
    visit diario_url(@diario)
    click_on "Edit this diario", match: :first

    check "Alcool" if @diario.alcool
    check "Alimentacao" if @diario.alimentacao
    fill_in "Data", with: @diario.data
    fill_in "Dia semana", with: @diario.dia_semana
    check "Estudo" if @diario.estudo
    check "Exercicio" if @diario.exercicio
    check "Leitura" if @diario.leitura
    fill_in "Pontos", with: @diario.pontos
    click_on "Update Diario"

    assert_text "Diario was successfully updated"
    click_on "Back"
  end

  test "should destroy Diario" do
    visit diario_url(@diario)
    accept_confirm { click_on "Destroy this diario", match: :first }

    assert_text "Diario was successfully destroyed"
  end
end
