# Array+Combinatorial


Swift array extension to generate combinations and permutations. 

``` swift

> [1, 2, 3, 4].combinations(3) 

[[1, 2, 3], [1, 2, 4], [1, 3, 4], [2, 3, 4]]

> [1, 2, 3, 4].variations(3)

[[3, 2, 1], [3, 1, 2], [1, 3, 2], [2, 3, 1], [2, 1, 3], [1, 2, 3], [4, 2, 1], [4, 1, 2], [1, 4, 2], [2, 4, 1], [2, 1, 4], [1, 2, 4], [4, 3, 1], [4, 1, 3], [1, 4, 3], [3, 4, 1], [3, 1, 4], [1, 3, 4], [4, 3, 2], [4, 2, 3], [2, 4, 3], [3, 4, 2], [3, 2, 4], [2, 3, 4]]

> [1, 2, 3, 4].permutations

[[4, 3, 2, 1], [4, 3, 1, 2], [4, 1, 3, 2], [1, 4, 3, 2], [4, 2, 3, 1], [4, 2, 1, 3], [4, 1, 2, 3], [1, 4, 2, 3], [2, 4, 3, 1], [2, 4, 1, 3], [2, 1, 4, 3], [1, 2, 4, 3], [3, 4, 2, 1], [3, 4, 1, 2], [3, 1, 4, 2], [1, 3, 4, 2], [3, 2, 4, 1], [3, 2, 1, 4], [3, 1, 2, 4], [1, 3, 2, 4], [2, 3, 4, 1], [2, 3, 1, 4], [2, 1, 3, 4], [1, 2, 3, 4]]

> Array("abc").permutation

[["c", "b", "a"], ["c", "a", "b"], ["a", "c", "b"], ["b", "c", "a"], ["b", "a", "c"], ["a", "b", "c"]]

> Array("abc").permutations.map {String($0)}

["cba", "cab", "acb", "bca", "bac", "abc"]

> Array("abc").combinations(2).map{String($0)}

["ab", "ac", "bc"]

```


## Credit 

The code was translated from scala code by http://vkostyukov.ru/posts/combinatorial-algorithms-in-scala/

<psksvp@gmail.com>

