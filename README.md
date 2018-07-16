# Bank tech test

## Requirements

- Interact with the code via IRB (Don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

## First rough design

Based on the requirements given in the [original Github repo] (https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md) a rough design, to highlight my earliest thinking.

![First design bank tech test](/assets/first-design-bank-test.jpg "first design tech test")

## First object design

A first sketch, to outline thoughts around objects (classes, methods, arguments)

![First object design bank tech test](/assets/objects-first-design.jpg "first object design tech test")

### Initial thoughts:

Class:
- account

Has methods:
- balance (no arguments necessary - outputs bank statement, per the original design)
- withdrawal (takes 2 arguments; amount and date)
- deposit (takes 2 arguments: amount and date)

# TDD

Added rspec, together with `lib` and `spec` folders
