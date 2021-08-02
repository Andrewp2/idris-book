== Overview

Type-driven development has a similarity to test-driven development. 
The idea is similar - but tests can only show the *presence* of errors, while 
types can show the *absence* of errors. As such, types can be very powerful
in situations where tests are inadequate.

In idris, types are first-class constructs. That means you can compute
with types in a manner similar to the way you compute with values in
imperative languages. That means you can prove things about the way the 
program runs at compile time rather than at run time.

=== What is a type?

Consider a shape-sorter toy. It has holes on the top in the shape of
circles, squares, rectangles, triangles, etc. Only things that are the 
same shape as the hole can fit in the toy. This is just like the role types
play - types are holes, and shapes are values.

=== Type-Driven Development

The process in idris looks like this:

1. Write the input and output types
2. Define the function, using the input types to guide the implementation
3. Refine and edit the type and function definition

Think instead of types *checking* your work, they instead provide a *plan* 
for you to work towards.

=== Matrices

One example of the power of Idris are the computations you can do with
matrices.

Consider adding and multiplying matrices. If you define a `Matrix` type,
then you can run into an issue where you have to check the matrices sizes
before performing an operation. You could try to add together

$$
\begin{pmatrix}
1 & 2 & 3\\
4 & 5 & 6
\end{pmatrix}
$$

and

$$
/begin{pmatrix}
1 & 2\\
3 & 4
\end{pmatrix}
$$

which clearly don't work.

Instead of using a Matrix type, you can refine the type so it includes the 
dimension of the matrix. Take a look at the table below:


|Operation|Input Types|Output Type|
|---------|-----------|-----------|
|Add|`Matrix x y`, `Matrix x y`|`Matrix x y`|
|Multiply|`Matrix x y`, `Matrix y z`|`Matrix x z`|
|Transpose|`Matrix x y`|`Matrix y z`|

Now, you can ensure *at compile time* that your matrices are the right sizes.

=== ATM

Not only can you describe the relationships between inputs and outputs, 
you can also describe when they happen. You can do this through creating
a state machine, where you determine exactly what state you end up in
after running a certain function. Once again you can determine if a function
call is valid or not at compile time, rather th an at run time.

=== Concurrent Programming

Idris has powerful mechanisms for concurrent programming. Idris manages
concurrent processes through messages. Each process has a way to 
send and receive messages, and you can use types to ensure that certain
behaviors happen. This is especially important considering how hard it is
to get correct behavior when concurrency is involved.

=== Functional Programming






