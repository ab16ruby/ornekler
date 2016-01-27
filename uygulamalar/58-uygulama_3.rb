require 'turkish_support'
using TurkishSupport

def kac_adet(samanlik, igne)
  samanlik.upcase!
  igne.upcase!
  samanlik.split(igne).length - 1
end

kac_adet("bu cümlede iki tane bu var", "bu")   # => 2
kac_adet("Bu cümlede iki tane bu var", "BU")   # => 2
