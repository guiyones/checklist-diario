class Diario < ApplicationRecord
  has_rich_text :observacao

  def pontuacao
    pontosPositivos = [ exercicio?, leitura?, alimentacao?, sono?, estudo? ]
    pontosNegativos = [alcool?, maconha?]

    pontos = 0

    pontosPositivos.each do |habito|
      pontos += 1 if habito
    end

    pontosNegativos.each do |habito|
      pontos += habito ? -1:1
    end

    pontos
  end
end
