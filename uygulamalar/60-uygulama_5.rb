def sirala(metin)
  metin.split.sort{ |x,y| x.length <=> y.length}.join(' ')
end

sirala("bilişim eskişehir akademik")  # => "bilişim akademik eskişehir"
