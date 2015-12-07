#Hash

* __Tworzenie hashy, różne sposoby.__

```ruby
string_lengths = { "Wojciech" => 10, "Rzepecki" => 6 }
```
```ruby
options = { :font_size => 10, :font_family => "Arial" }
```
```ruby
options = { font_size: 10, font_family: "Arial" }
```
```ruby
grades = Hash.new
grades["Dorothy Doe"] = 9
```


* __Wyciganie wartosci spod klucza__

```ruby
options[:font_size]  # => 10
```
