# Bank tech test

## Requirements

- Interact with the code via IRB (Don't need to implement a command line interface that takes input from STDIN.)
- Deposits, withdrawal.
- Account statement (date, amount, balance) printing.
- Data can be kept in memory (it doesn't need to be stored to a database or anything).

Statement output should be:

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## User stories
1. I want to deposit to my account, including the amount and date
2. I want to withdraw from my account, including the amount and date
3. I want to see an ongoing balance, which is the total value of deposits, minus the total value of withdrawals
4. I want to see my account statement, which is a list of transactions including date, deposit/withdrawal and balance

## First rough design

Based on the requirements given in the [original Github repo](https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md) a rough design, to highlight my earliest thinking.

![First design bank tech test](/assets/first-design-bank-test.jpg "first design tech test")

## First object design

A first sketch, to outline thoughts around objects (classes, methods, arguments)

![First object design bank tech test](/assets/objects-first-design.jpg "first object design tech test")

### Initial thoughts:

#### Class:
- account

#### Has methods:
- balance (no arguments necessary - outputs bank statement, per the original design)
- withdrawal (takes 2 arguments; amount and date)
- deposit (takes 2 arguments: amount and date)

# Configuration

Added rspec, rubocop (together with scaffolint) together with `lib` and `spec` folders

# TDD process

### Add a deposit (credit) and return the balance

The first (red) test measured the change that a deposit (1000.00) would have on the balance:

Red:
- Test that `.deposit` changes `.balance` by the amount added

Path to green:
- Create an empty `Account` class
- Create an empty `.balance` method
- Create an empty `.deposit` method
- Add argument to `.deposit` method
- Initialised a method to set `.balance` to zero upon account creation

### Add date, within an argument in deposit

Red:
- Test that `.deposit` takes a date argument and is returned by balance

Path to green:
- Add a second argument to `.deposit`
- Return both values in an array, within `.balance`

Refactor
- Changed the original test to add date and amount

## Enable withdrawal (debit) from account balance

Red:
- Test that `.withdraw` takes both a date and amount arguments, reflected in balance

Path to green:
- Create the `.withdraw` method
- Amend the `.balance` method so that it adds each transaction (withdrawal or deposit) to a statement
- `.statement` is a new method I'll need - this is an update to the original diagram

## Initial statement design thoughts

![Bank statement thoughts](/assets/bank-statement-thoughts.jpg "bank statement")

## Updated statement design thoughts

After some thinking (and much time spent trying different solutions in irb, hence lack of commits) about both how the data could be stored and retrieved, I decided upon the following structure, using an array of hashes:

```
[{:Date=>"15/01/2012", :Deposit=>10, :Debit=>0, :Balance=>10}]
```

This allows for an easier iteration. It did however, require some larger refactoring from the first use cases, however the 2 methods of `.credit` and `.debit` still remain.

I also created instance variables for both deposits and withdrawals, both initialised on instantiation. These hold the ongoing debits and credits, which allow the value of balance to be calculated.

## Things to refactor
- Separation of single `Account` class into smaller classes
- Isolate tests
- Separate feature & unit tests
- Move relevant methods into private
- Include test coverage

## Refactoring
- Added SimpleCov at 90% minimum coverage
