## Setup

1. Run `unzip -a cyrus_rolen_le.zip` and `cd cyrus_rolen_le`
2. Run `bundle install` to install repos gem depenencies
3. Run `bundle exec rake -T` to see all rake tasks

## Rake Tasks

* `bundle exec rake` || `bundle exec rake test`: To run test suite
* `bundle exec rake cyrus:output1`: To output pipe.txt, comma.txt, and space.txt sorted by gender (females before males) then by last name ascending
* `bundle exec rake cyrus:output2`: To output pipe.txt, comma.txt, and space.txt sorted by birth date, ascending
* `bundle exec rake cyrus:output3`: To output pipe.txt, comma.txt, and space.txt sorted by sorted by last name, descending

## Code Quality

[![Code Climate](https://codeclimate.com/github/rolentle/cyrus-code-challenge.png)](https://codeclimate.com/github/rolentle/cyrus-code-challenge)

[github](https://github.com/rolentle/cyrus-code-challenge)

`open ./coverage/index.html`: See test coverage by file

## Gems and Dependencies

This repo uses the following dependencies

```ruby
 ruby 2.0.0
 minitest (5.2.3)
 rake (10.1.1)
 simplecov (0.8.2)
```

## Possible Future  Iterations

* Accept non-pipe.txt, comma.txt, or space.txt files via the Rake using envoirment variables (i.e `bundle exec CYRUS_FILES="./file1.txt, ./file2.txt, file3.txt" rake cyrus:output1`)`
* Add error handling for invalid files and implement null object patterns that redirect invalid files.
* Store parsed inputs into its own file to save state for long term usage.
* Add save to file capabilities for all of outputs.
