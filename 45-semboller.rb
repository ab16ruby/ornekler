:sembol.class # => Symbol
:"baska bir sembol".class # => Symbol
 
"ruby" == "ruby" # => true
"ruby".equal? "ruby" # => false
 
:ruby.equal? :ruby # => true
 
"ruby" == :ruby.to_s # => true
:ruby == "ruby".to_sym # => true 