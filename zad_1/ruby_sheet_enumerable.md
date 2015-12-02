#Enumerable

* __drop(n) → array__
```ruby
a = [1, 2, 3, 4, 5, 0]

a.drop(3)             #=> [4, 5, 0]
```

* __all? [{ |obj| block } ] → true or false__
```ruby
%w[ant bear cat].all? { |word| word.length >= 3 } #=> true
%w[ant bear cat].all? { |word| word.length >= 4 } #=> false
[nil, true, 99].all?                              #=> false
```

* __count → int__
```ruby
ary = [1, 2, 4, 2]

ary.count               #=> 4
ary.count(2)            #=> 2
ary.count{ |x| x%2==0 } #=> 3
```

* __map { |obj| block } → array__
```ruby
(1..4).map { |i| i*i }    #=> [1, 4, 9, 16]
```
