---
title: Swift Functions
date: 2016-07-18 00:46 UTC
tags: swfit, fundamentals
---

# Swift Functions

Functions in Swift allow you to write self contained blocks of code that perform a specific task.
You give a function a name and call the function when needed.

## Defining and calling functions
You define a function by using the `func` keyword followed by parentheses `()`

```swift
func greeting() {
  print("Hello, you are awesome!")
}
```

To call the newly created function just call it by using the name you gave it.

```swift
greeting()
```

This will print out:

```swift
"Hello, you are awesome!"
```

## Function Parameters

Functions can have parameters included when you are defining them. When you define your function with a parameter
you give the parameter a type.

```swift
// firstName parameter is of type string
func greeting(firstName: String) {
  print("Hello, \(firstName) you are awesome!")
}

// passing string "Nestor" to the function
greeting("Nestor")
```

This will print out:

```swift
"Hello, Nestor you are awesome!"
```

Functions can also have multiple parameters.

```swift
func greeting(firstName: String, lastName: String) {
  print("Hello, \(firstName) \(lastName) you are awesome!")
}

// Notice first parameter does not have a label but the
// second one has 'lastName' as a label
greeting("Nestor", lastName: "Castillo")

// will print
// "Hello, Nestor Castillo you are awesome!"
```
Any argument after the first is labeled by the name you give to it when defining the function.
In the example above we had to use `lastName` as the label when passing `"Castillo"` to
the function.

## Function external and local parameter names
External parameter names are used to label arguements that are passed to the function. Local parameter
names are used in the implementation of the function. To give an external parameter name to a function
you simply add the parameter name before the local parameter name.

```swift
// 'to' and 'theGreatest' are external parameter names used
// to label the arguements that are passed in.
func greeting(to firstName: String, theGreatest lastName: String) {
// firstName and lastName refer to the arguments passed in
// and is used in the internal implementation of the func
}
```

The idea behind having an external parameter name is to make the code very expressive, clear
and readable. If you are using external parameters names, they must always be used when
you call the function.

```swift
greeting(to: "Nestor", theGreatest: "Castillo")
// "Hello, Nestor Castillo you are awesome!"
```
If an external parameter name is not given then Swift will use the local parameter name as the
external parameter name.

```swift
// in this case firstName and lastName are both
// external and local parameter names
func greeting(firstName: String, lastName: String) {
// implementation here
}
```

## Function Return Values
Functions can have a return value. You delcare a function's return value by adding a `->` to the function declaration
followed by the type the value should return.

```swift
// notice the `->` followed by 'Int' as the return type
func add(firstNumber: Int, secondNumber: Int) -> Int {
  // use return here to return the value
  return firstNumber + secondNumber
}
```

## Conclusion
Functions allow you to define a block of code for a given task. This gives you the ability to execute the
function as many times as you like without having to write the same code over and over again.

Functions can have zero or more parameters and can have a return value.

Functions can have external and internal parameter names. The first parameter does not need a label; however,
all other parameters will be labeled by their names. External parameter names give you the ability to write
more expressive, clear and readable code.
