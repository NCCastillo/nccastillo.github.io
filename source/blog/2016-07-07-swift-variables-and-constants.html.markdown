---
title: Swift Variables and Constants
date: 2016-07-07 19:25 UTC
tags: swift, fundamentals
---

# Swift Variables and Constants

Swift allows us to name any piece of data by using either a variable or a constant. Both variables and constants carries
with it an associated type, which denotes what sort of data the variable or constant refers to (i.e. text, numbers, time or date).

Ths difference between a variable and a constant is you cannot change the data assigned to a constant. It is good practice to use constants for values that are not going to change.

Let us take a look at some examples:

## Variables


```swift
var day: String = "Saturday"
```

A variable is declared by using the word `var`. In the example above we declare a variable named `day` with a type of `String` and assigning the value `"Saturday"`. If we decide to change the value of `day` all we have to do is set a new value to it.

```swift
// initial assignment
var day: String = "Saturday"

//setting new value to day
day = "Sunday"
```

Swift is known to be a safe language. If you try to assign a new value that has a different type than the one declared (remember we declared `day` with type of `String`) it will throw an error. The error message would say something like 
"Cannot assign value of type to type 'String' ".

```swift
// initial assignment
var day: String = "Saturday"

// setting new value to day with a type of integer
// this will give you an error "Cannot assign value of type
// 'Int' to type 'String'"
day = 10
```

## Constants

```swift
let name: String = "Nestor Castillo"
```

A constant is declared by using the word `let`. You will notice it looks very similar to declaring a variable. We are declaring
a constant named `name` with a type of `String` and assigning the value `"Nestor Castillo"`. 

```swift
let name: String = "Nestor Castillo"

// This will throw an error.
name = "Jon Doe"
```

Remember constants cannot change and if you try to assign a new value then it will throw an error message. The error message would say something like "Cannot assign to value 'name' is a let constant"

Variables and constants give you the ability to name your data and refer back them in your code. The only difference between the two are the way you declare them and only variables can change their values. Variables are declared using the `var` keyword and constants are declared using the `let` keyword.
