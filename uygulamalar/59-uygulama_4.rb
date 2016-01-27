def uzunluk_bulucu_metot dizi
  dizi.map { |eleman| eleman.size }
end

def sozluklu_uzunluk_bulucu_metot dizi
  dizi.map { |eleman| [eleman, eleman.size] }.to_h
end

uzunluk_bulucu_metot ["Ali", "Veli", "Nuriye"]  # => [3, 4, 6]
sozluklu_uzunluk_bulucu_metot ["Ali", "Veli", "Nuriye"]  # => {"Ali"=>3, "Veli"=>4, "Nuriye"=>6}
