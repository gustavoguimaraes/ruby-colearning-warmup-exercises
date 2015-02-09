# Dice Roller Bucket - warmup-005

In a loop, ask the user to create a [die](https://en.wikipedia.org/wiki/Dice) with as many sides as they want.
Tell the user that it needs to have a minimum of four sides.
Keep asking the user to create dice until the user inputs 0 (zero).
As soon as the user stops creating dice, roll them all and return a random face for each die.

## Example:
If I created 2 dice, one with 4 sides and another with 20, as soon as I roll them a possible outcome could be:
```
On the table:
  Your 4-sided die shows the value of 2
  Your 20-sided die shows the value of 17
```

## Input and output example:

```
Create as many dice you want
A die should have minimum 4 sides
Enter 0 to roll the dice
How many sides? 10
Added a die with 10 sides
How many sides? 4
Added a die with 4 sides
How many sides? 3
You can't have a die with less than 4 sides
How many sides? 20
Added a die with 20 sides
How many sides? 0
On the table:
  Your 10-sided die shows the value of 2
  Your 4-sided die shows the value of 1
  Your 20-sided die shows the value of 15
```

## Note:

To execute the tests you need `rspec`.
To install rspec:

```
gem install rspec
```

To execute the tests:
```
rspec warmup-005_spec.rb
```
