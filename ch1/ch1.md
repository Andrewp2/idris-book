## Overview

Type-driven development has a similarity to test-driven development. 
The idea is similar - but tests can only show the *presence* of errors, while 
types can show the *absence* of errors. As such, types can be very powerful
in situations where tests are inadequate.

In idris, types are first-class constructs. That means you can compute
with types in a manner similar to the way you compute with values in
imperative languages. That means you can prove things about the way the 
program runs at compile time rather than at run time.

### What is a type?

Consider a shape-sorter toy. It has holes on the top in the shape of
circles, squares, rectangles, triangles, etc. Only things that are the 
same shape as the hole can fit in the toy. This is just like the role types
play - types are holes, and shapes are values.

### Type-Driven Development

The process in idris looks like this:

1. Write the input and output types
2. Define the function, using the input types to guide the implementation
3. Refine and edit the type and function definition

Think instead of types *checking* your work, they instead provide a *plan* 
for you to work towards.

### Matrices

One example of the power of Idris are the computations you can do with
matrices.

Consider adding and multiplying matrices. If you define a `Matrix` type,
then you can run into an issue where you have to check the matrices sizes
before performing an operation. You could try to add together

$$
\begin{pmatrix}
1 & 2 & 3 \\
4 & 5 & 6
\end{pmatrix}
$$

and

$$
\begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}
$$

which clearly doesn't work.

Instead of using a Matrix type, you can refine the type so it includes the 
dimension of the matrix. Take a look at the table below:


|Operation|Input Types|Output Type|
|---------|-----------|-----------|
|Add|`Matrix x y`, `Matrix x y`|`Matrix x y`|
|Multiply|`Matrix x y`, `Matrix y z`|`Matrix x z`|
|Transpose|`Matrix x y`|`Matrix y x`|

Now, you can ensure *at compile time* that your matrices are the right sizes.

### Automated Teller Machine

Not only can you describe the relationships between inputs and outputs, 
you can also describe when they happen. You can do this through creating
a state machine, where you determine exactly what state you end up in
after running a certain function. Once again you can determine if a function
call is valid or not at compile time, rather th an at run time.

### Concurrent Programming

Idris has powerful mechanisms for concurrent programming. Idris manages
concurrent processes through messages. Each process has a way to 
send and receive messages, and you can use types to ensure that certain
behaviors happen. This is especially important considering how hard it is
to get correct behavior when concurrency is involved.

### Type, Define, Refine

IN Idris, you can do type-driven development thorugh a cycle of "Type, define, refine". Write a type, implement a function to satisfy the type, and finally refine the type and definition.

In the matrix example, we started with a `Matrix` type and refined it to include the rows and columns, like `Matrix 3 4`.

||Input ["a", "b", "c", "d"]|Input ["e", "f", "g"]| Output type |
|---------|-----------|-----------|-----------|
|Simple|`AnyList` | `AnyList`|`AnyList`|
|Generic|`List<String>`| `List<String>`|`List<String>`|
|Dependent|`Vec 4 String`|`Vec 3 String`| `Vec 7 String`|

### Pure functional programming

* Programs are composed of functions
* Program execution consists of the evaluation of functions
* Functions are a first-class language construct
* Functions don't have side effects
* For a specific input, the output is always the same. Deterministic input and output


### Side-effects

Side effects can be handled in pure functional programming languages by describing them. Instead of saying a function returns a `String`, we might say it returns an `IO String` if IO is needed to construct the string.

### Partial and total functions

Idris also supports a stronger property, that is the distinction between *partial* and *total* functions. Total functions are guaranteed to produce results in a finite time for every possible well-typed input. A partial function, might not return for some inputs.

Note that a total function is guaranteed to produce a finite prefix of a potentially infinite result.

### Using Idris

Use `idris` to enter the repl.

All values have a type associated with them: `42.0 : Double` or `4 : Integer`.

`:t` allows you to check the types of expressions without evaluating them.

```haskell
:t 2 + 2
2 + 2 : Integer
```

Types can also be checked:

```haskell
:t Integer
Integer : Type
```

stuff

```haskell
:t Type
Type : Type 1

```

stuff

```haskell
module Main
main : IO ()
main = putStrLn "Hello, Idris World!"
```

### hello

yayaya
`idris Hello.idr` will open an Idris REPL with the file loaded.

`:exec` will execute the main function.








