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
