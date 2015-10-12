# metoda wyœwietla klasê obiektu na której jest wywo³ana

{object}.class
_________________________________________________________

# dzia³ania arytmetyczne

2 * 2 	# => 4
2 + 4 	# => 6
2 - 5 	# => -3
5 / 5 	# => 1
4 % 3 	# => 1
2 ** 5	# => 32
_________________________________________________________

# dzia³ania arytmecztyne mo¿na równie¿ zapisywaæ pod tak¹ postaci¹
# x.+(y), x.**(y) itd. gdzie x jest obiektem na którym wykonywana jest
# metoda arytmetyczna a y to argument tej metody

2.+(4) 		# => 6
2.*(12) 	# => 24
_________________________________________________________

# specjalne wartoœci (true, false, nil) s¹ obiektami

nil.class	# => NilClass
true.class 	# => TrueClass
false.class # => FalseClass
_________________________________________________________

# metoda równoœci
# x == y gdzie x i y s¹ obiektami

1 == 1	# => true
2 == 3	# => false
_________________________________________________________

# metoda ró¿noœci
# x != y gdzie x i y s¹ obiektami 

3 != 4	# => true
5 != 5	# => false
_________________________________________________________

# metoda negacji
# !x gdzie x jest obiektem

!nil 	# => true | nil jest inn¹ reprezentacj¹ false
!true 	# => false
!0 		# => false
_________________________________________________________

# operatory logiczne
# && (AND) 	gdy któryœ z kolejnych obliczanych wyra¿eñ bêdzie false
			przestaje obliczaæ kolejne wyra¿enia i zwraca false
			
# || (OR)	gdy któryœ z kolejnych obliczanych wyra¿eñ bêdzie true
			przestaje obliczaæ kolejne wyra¿enia i zwraca true

true && true	# => true
false && true 	# => false
_________________________________________________________

# interpolacja, mo¿liwa tylko w cudzys³owiu 

placeholder = 'Wojtek'
"Mam na imiê #{placeholder}"	# => "Mam na imiê Wojtek"
_________________________________________________________

# ³¹czenie stringów

'pierwszy ' + 'drugi' 	# => "pierwszy drugi"
'pierwszy ' + 1 		# => b³¹d nie mo¿na przekonwertowaæ Fixnum
							 do Stringa, aby to zrobiæ trzeba na obiekcie
							 typu Fixnum wywo³aæ metodê to_s
'pierwszy ' + 2.to_s	# => "pierwszy 2"
_________________________________________________________

# wyœwietlanie na ekranie ze znakiem nowej linii

puts "I'm printing" 	# => "I'm printing"
						# => nil
_________________________________________________________

# wyœwietlanie na ekranie bez znaku nowej linii

print "I'm printing"	# => "I'm printing => nil"
_________________________________________________________

# przypisanie do zmiennej wartoœci

x = 12	# => 12

# widz¹c, ¿e przypisanie wartoœci zwraca przypisan¹ wartoœæ
# mo¿na korzystaæ ze znaku przypisania wielokrotnie

x = y = 12	# => 12
_________________________________________________________

# kiedy nazwa zmiennej sk³ada siê z kilku cz³onów, rozdzielame jest
# znakiem _ 

do_roboty = true
_________________________________________________________

# symbole w ruby s¹ podobne do zmiennych z typu wyliczeniowego
# przechowuj¹ sta³¹ wartoœæ liczbow¹
# klasa symbolów to Symbol

pending.class	# => Symbol

status = :pending
status == :pending 	# => true
status == 'pending' # => false
status == :approved # => false
_________________________________________________________

# tworzenie tablicy, ró¿ne sposoby

ary = [1, "two", 3.0]					# => [1, "two", 3.0]
ary = Array.new 						# => []
Array.new(3)							# => [nil, nil, nil]
Array.new(3, true)						# => [true, true, true]

# tworzenie tablic wielowymiarowych

Array.new(4) { Hash.new } 				# => [{}, {}, {}, {}]
empty = Array.new(3) { Array.new(3) }	# => [[nil, nil, nil],
											  [nil, nil, nil],
											  [nil, nil, nil]]







