//
//  Array+Combinatorial.swift
//  
//
//  Created by psksvp on 17/8/20.
//

import Foundation

/**
 translate from Scala by psksvp@gmail.com
 http://vkostyukov.ru/posts/combinatorial-algorithms-in-scala/
 */
extension Array
{
  func combinations(_ n: Int) -> [[Element]]
  {
    guard self.count > 0 else {return [[Element]]()}
    guard n <= self.count else {return [[Element]]()}
    
    if 1 == n
    {
      return self.map {[$0]}
    }
    else
    {
      let head = self.first! // at this point head should be valid
      let tail = Array(self.dropFirst())
      let car = tail.combinations(n - 1).map {[head] + $0} // build first comb
      let cdr = tail.combinations(n)  // do the rest
      return car + cdr
    }
  }
  
  func variations(_ n:Int) -> [[Element]]
  {
    func mixone(_ i: Int, _ x: Element, _ ll: [Element]) -> [Element]
    {
      return Array( ll[0 ..< i] + ([x] + ll[i ..< ll.count]) )
    }
    
    func foldone(_ x: Element, _ ll: [Element]) -> [[Element]]
    {
      let r:[[Element]] = (1 ... ll.count).reduce([[x] + ll])
                          {
                            a, i in
                            [mixone(i, x, ll)] + a
                          }
      return r
    }
    
    func mixmany(_ x: Element, _ ll: [[Element]]) -> [[Element]]
    {
      guard ll.count > 0 else {return [[Element]]()}
      let head = ll.first!
      let tail = Array<Array<Element>>(ll.dropFirst())
      return foldone(x, head) + mixmany(x, tail)
    }
    
    guard self.count > 0 else {return [[Element]]()}
    guard n <= self.count else {return [[Element]]()}
    
    if 1 == n
    {
      return self.map {[$0]}
    }
    else
    {
      let head = self.first! // at this point head should be valid
      let tail = Array(self.dropFirst())
      return mixmany(head, tail.variations(n - 1)) + tail.variations(n)
    }
  }
  
  var permutations: [[Element]]
  {
    variations(self.count)
  }
}
