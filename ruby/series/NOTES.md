# Series

> Iterates the given block for each array of consecutive <n> elements. If no block is given, returns an enumerator. [Ruby-Doc](https://ruby-doc.org/core-2.5.1/Enumerable.html#method-i-each_cons)

```Ruby
(1..10).each_cons(3) { |a| p a }
# outputs below
[1, 2, 3]
[2, 3, 4]
```
