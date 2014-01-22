# Sparkr

[![Build Status](https://travis-ci.org/rrrene/sparkr.png?branch=master)](https://travis-ci.org/rrrene/sparkr)

Sparkr is a port of [spark](https://github.com/holman/spark) for Ruby.

It let's you create ASCII sparklines for your Ruby CLIs: ▁▂▃▅▇

## Installation

Add this line to your application's Gemfile:

    gem 'sparkr'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sparkr


## Usage

### Shell

After installation, just run `sparkr` and pass it a list of numbers, like
you would with [spark](https://github.com/holman/spark). The output is what
you would expect:

    $ sparkr 0 30 55 80 33 150
    ▁▂▃▅▂▇

### Ruby

The real reason for this port:

    Sparkr.sparkline([0,30,55,80,33,150])
    # => "▁▂▃▅▂▇"


## Contributing

1. Fork it ( http://github.com/rrrene/sparkr/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Author

René Föhring (@rrrene)


## Credits

Sparkr would not exist without Zach Holman's [spark](https://github.com/holman/spark).


## License

Sparkr is released under the MIT License. See the LICENSE.txt file for further
details.
