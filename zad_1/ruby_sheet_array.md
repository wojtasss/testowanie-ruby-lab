#Array
* __Tworzenie tablic, różne sposoby.__

```ruby
ary = [1, "two", 3.0]           # => [1, "two", 3.0]
```
```ruby
ary = Array.new                 # => []
```
```ruby   
Array.new(3)                    # => [nil, nil, nil] 
```
```ruby
Array.new(3, true)              # => [true, true, true]
```
```ruby
Array.new(4) { Hash.new }       # => [{}, {}, {}, {}]
```
```ruby
empty_table = Array.new(3) { Array.new(3) }
# => [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
```
```ruby
Array({:a => "a", :b => "b"})   # => [[:a, "a"], [:b, "b"]]
```

* __Dostęp do elementów tablicy, różne sposoby.__

```ruby
arr = [1, 2, 3, 4, 5, 6]    # przykładowa tablica
```
```ruby
arr[2]        # => 3
```
```ruby
arr[100]      # => nil
```
```ruby
arr[-3]       # => 4
```
```ruby
arr[2,3]      # => [2, 4, 5]
```
```ruby
arr[1..4]     # => [2, 3, 4, 5]
```
```ruby
arr[1..-3]    # => [2, 3, 4]
```
```ruby
arr.at(0)     # => 1
```
```ruby
arr.first     # => 1
```
```ruby
arr.last      # => 6
```
```ruby
arr.take(4)   # => [1, 2, 3, 4]
```
```ruby
arr.drop(4)   # => [5, 6]
```

Jeśli chcemy wywietlić komunikat błędu w momencie przekroczenia zakresu tablicy lub zwrócić własną wartość,
użyjemy w tym momencie `fetch`

```ruby
arr.fetch(100)              # => IndexError: index 100 outside of array bounds: -6...6
```
```ruby
arr.fetch(100, "oupsss")    # => "oupsss"
```

* __Otrzymywanie informacji o tablicy, różne sposoby.__

```ruby
arr = ['Chrome', 'Firefox', 'Safari', 'Opera', 'IE']    # przykładowa tabela
```
```ruby
arr.length                  # => 5
arr.count                   # => 5
arr.size                    # => 5
```
```ruby
arr.empty?                  # => false
```
```ruby
arr.include?('Konqueror')   # => false
```
* __Dodawanie elementów do tablicy, różne sposoby.__

```ruby
arr = [1, 2, 3, 4]    # przykładowa tablica
```
```ruby
arr.push(5)               #=> [1, 2, 3, 4, 5]
```
```ruby
arr << 6                  #=> [1, 2, 3, 4, 5, 6]
```
```ruby
arr.unshift(0)            #=> [0, 1, 2, 3, 4, 5, 6]
```
```ruby
arr.insert(3, 'apple')    #=> [0, 1, 2, 'apple', 3, 4, 5, 6]
```
```ruby
arr.insert(3, 'orange', 'pear', 'grapefruit')
# => [0, 1, 2, "orange", "pear", "grapefruit", "apple", 3, 4, 5, 6]
```

* __Usuwanie elementów z tablicy, różne sposoby__

```ruby
arr =  [1, 2, 3, 4, 5, 6]     # przykładowa tablica
```
```ruby
arr.pop             # => 6
arr                 # => [1, 2, 3, 4, 5]
```
```ruby
arr.shift           # => 1
arr                 # => [2, 3, 4, 5]
```
```ruby
arr.delete_at(2)    # => 4
arr                 # => [2, 3, 5]
```
```ruby
arr = [1, 2, 2, 3]
arr.delete(2)       # => 2
arr                 # => [1,3]
```
```ruby
arr = ['foo', 0, nil, 'bar', 7, 'baz', nil]   # => przykładowa tablica
```
```ruby
arr.compact         #=> ['foo', 0, 'bar', 7, 'baz']
arr                 #=> ['foo', 0, nil, 'bar', 7, 'baz', nil]
arr.compact!        #=> ['foo', 0, 'bar', 7, 'baz']
arr                 #=> ['foo', 0, 'bar', 7, 'baz']
```
```ruby
arr = [2, 5, 6, 556, 6, 6, 8, 9, 0, 123, 556]     # => przykładowa tablica
```
```ruby
arr.uniq            #=> [2, 5, 6, 556, 8, 9, 0, 123]
```
* __Iterowanie tablic.__

```ruby
arr = [1, 2, 3, 4, 5]                     # => prints: -9 -8 -7 -6 -5
arr.each { |a| print a -= 10, " " }       # => [1, 2, 3, 4, 5]
```
```ruby
words = %w[first second third fourth fifth sixth]     
# => ["sixth", "fifth", "fourth", "third", "second", "first"]

str = ""
words.reverse_each { |word| str += "#{word} " }
p str                                                 # => "sixth fifth fourth third second first "
```
```ruby
arr.map { |a| 2*a }             # => [2, 4, 6, 8, 10]
arr                             # => [1, 2, 3, 4, 5]
arr.map! { |a| a**2 }           # => [1, 4, 9, 16, 25]
arr                             # => [1, 4, 9, 16, 25]
```
* __Selektywny wybór elementów z tablic.__

Bez zmian w tablicy na której wywołana jest metoda

```ruby
arr = [1, 2, 3, 4, 5, 6]        # => [1, 2, 3, 4, 5, 6] 
```
```ruby
arr.select { |a| a > 3 }        # => [4, 5, 6]
arr.reject { |a| a < 3 }        # => [3, 4, 5, 6]
arr.drop_while { |a| a < 4 }    # => [4, 5, 6]
arr                             # => [1, 2, 3, 4, 5, 6]
```

Ze zmianą w tablicy na której wywołana jest metoda
```ruby
arr = [1, 2, 3, 4, 5, 6]        # => [1, 2, 3, 4, 5, 6]
arr.delete_if { |a| a < 4 }     # => [4, 5, 6]
arr                             # => [4, 5, 6]
```
```ruby
arr = [1, 2, 3, 4, 5, 6]        # => [1, 2, 3, 4, 5, 6]
arr.keep_if { |a| a < 4 }       # => [1, 2, 3]
arr                             # => [1, 2, 3]
```

