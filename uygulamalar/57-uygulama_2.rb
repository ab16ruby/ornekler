require 'turkish_support'
using TurkishSupport

def palindrom?(string)
  string.upcase!.gsub!(/\W/, '')
  string == string.reverse
end

palindrom? "kazak"    # => true
palindrom? "kalpak"   # => false

palindrom? "Traş niçin şart"             # => true
palindrom? "Ey Edip Adana da pide ye."   # => true
