# RubyEnum

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/ruby_enum`. To experiment with that code, run `bin/console` for an interactive prompt.


## Installation

Add this line to your application's Gemfile:

```ruby
gem "ruby_enum", github: "mlogix/ruby_enum", require: "ruby_enum"
```

And then execute:

    $ bundle

## Usage

```
class TaskActionTypeEnum < Enum
  SIMPLE_ACTION     = "simple_action".freeze
  SEND_EMAIL        = "send_email".freeze
  PHONE_CALL        = "phone_call".freeze
  MAKE_APPOINTMENT  = "make_appointment".freeze
  FILL_FORM         = "fill_form".freeze
end
```

```
TaskActionTypeEnum.entries
=> [:PHONE_CALL, :MAKE_APPOINTMENT, :FILL_FORM, :SIMPLE_ACTION, :SEND_EMAIL]
```

```
TaskActionTypeEnum.values
=> ["phone_call", "make_appointment", "fill_form", "simple_action", "send_email"]
```

```
TaskActionTypeEnum.to_h
=> {"PHONE_CALL"=>"phone_call",
 "MAKE_APPOINTMENT"=>"make_appointment",
 "FILL_FORM"=>"fill_form",
 "SIMPLE_ACTION"=>"simple_action",
 "SEND_EMAIL"=>"send_email"}
```

```
TaskActionTypeEnum[:SIMPLE_ACTION]
=> "simple_action"
```

```
TaskActionTypeEnum.get_const("simple_action")
=> "SIMPLE_ACTION"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mlogix/ruby_enum. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RubyEnum project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mlogix/ruby_enum/blob/master/CODE_OF_CONDUCT.md).
