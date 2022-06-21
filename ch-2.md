# Chapter 2: Building Abstractions with Data

Why do we want compound data? (Same reason we want compound procedures):

- **To elevate the conceptual level at which we can design our
 program**: Rise above the conceptual level of primitives. Represent
 compound/complex data as a conceptual unit in itself (that can be
 manipulated as a unit). For example, instead of representing and
 manipulating rational numbers as two numbers (a numerator and
 denominator), you represent and manipulate them as just a rational
 number.

- **To increase modularity of our system**: The ability to manipulate
  a compound data object as a unit allows us to separate **the
  construction/representation of the compound data object** and **the
  manipulation of the compound data object** thus allowing us to
  change the two independently
  
- **To enhance the expressive power of our language:** ??


## Chapter Content

**Main issue**: abstraction as a technique for dealing with system
complexity.

How data abstraction enables us to erect abstraction barriers between
different parts of a system.

Using a programming language to form compound data from primitive data
(there is usually more than one way)
- **Closure**
- Conventional interfaces??

**Symbolic  expressions** to  increase the  representational power  of
Scheme.

**Data structures and algorithms** (investigated in the context of
symbolic differentiation, the representation of sets, and the encoding
of information??)

Generic operations
- Data directed programming??


## Introduction to Data Abstraction
Structure the part of a program that **uses** data in such a way that
it makes no assumptions about the data except what is strictly
necessary for it to know to perform the task at hand.

At the same time, the concrete data representation is defined
independently from the part of the program that uses the data.

Between these two parts is an interface--as set of procedures--called
**selectors** and **constructurs** (that implement the abstract data
in terms of the concrete representation - thus allowing interaction
between the two parts)

This forms an abstraction of the data that separates the part of the
program that uses the data, **the client**, from the part that
represents the compound data from its primitives. This separation
allows us to change the client or the data representation without
affecting the other.


## Abstraction Barriers
The idea behind data abstraction -> find the basic operations required
to manipulate all data objects of a certain type then use only those
operations to manipulate the data objects.  The client or the part of
the program that uses the the data objects, therefore, does not depend
on the data representation, they depend on the "basic operations"
implemented as procedures.

These procedures define an abstraction barrier and allow interaction
between the parts of the program on either side of the "barrier" - the
data representation and the client.


   data representation

--- constructors and selectors ---

   client
    

In the rational number example [add link], the "data representation"
is the representation of the rational number data type as a Lisp Pair
(`cons`). The most basic operations required to manipulate a rational
number at this level are the operations for its construction and
selection of its numerator and denominator. These operations have been
implemented by the `make-rat`, `numer` and `denom` procedures. These
procedures form the abstraction barrier. The client, at this level, is
the part of the program (abstraction layer) that uses the rational
number data type in terms of the constructor and selectors `make-rat`,
`numer` and `denom`.

   rational number as a Pair
   
--- `make-rat`, `numer` and `denom` ---

   rational number as a numerator and denominator

We can add another abstraction barrier with the procedures `add-rat`,
`sub-rat`, `mul-rat`, `div-rat` and `equal-rat?`

   rational number as a Pair

--- `make-rat`, `numer` and `denom` ---

   rational number as a numerator and denominator
   
--- `add-rat`, `sub-rat`, `mul-rat`, ... ---

   rational numbers in the problem domain


Structuring a program like this makes it easier to maintain and
modify. A compound data structure can be represented in many different
ways each with a positive or negative impact on performance depending
on how it is being used. Limiting the dependence of the client on the
data structure to a few basic procedures makes it possible to change
the representation without having to change the client or its client.

The flexibility derived from this also allows us to defer decision
about the data representation. (This is a principle in agile
development - defer commitments to when you can make a confident
data-based decision)
