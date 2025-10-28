class Diario < ApplicationRecord
  has_rich_text :observacao

  def pontuacao
    pontos = [ exercicio, leitura, alimentacao, sono, estudo ]
    if alcool?
      pontos.count(true) - 1
    else
      pontos.count(true)
    end
  end
end
