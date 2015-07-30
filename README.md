# UniversalValidator

[![Gem Version](https://badge.fury.io/rb/universal_validator.svg)](http://badge.fury.io/rb/universal_validator)

## Installation

Add this line to your application's Gemfile:

    gem 'universal_validator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install universal_validator

## Usage

```ruby
require 'universal_validator'

class Command
  def foo
    ...
    data = {name: 'bar', age: 200}
    ...
    v = UniversalValidator::Validator.new do |v|
      v.add_error_for(:name, 'wrong name') if data[:name] != 'baz'
      v.add_error_for(:age, 'wrong age') if data[:age] > 100
    end
    if v.errors?
      p v.errors #=> {:name=>["wrong name"], :age=>["wrong age"]}
      p v.errors_for(:name) #=> ["wrong name"]
      ...
    else
      ...
    end
  end
end
```

## Versioning

See [semver.org][semver]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

[semver]: http://semver.org/
