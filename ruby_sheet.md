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
