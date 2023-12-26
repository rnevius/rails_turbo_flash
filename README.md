# Rails Turbo Flash

Automatic flash message injection for Ruby on Rails Turbo Stream responses.

## Installation

Add `rails_turbo_flash` to your Gemfile, or:

```bash
$ bundle add rails_turbo_flash
```

## Why and How

Unable to find an authoritative solution from the Turbo Rails team or Rails community for adding flash messages to turbo stream responses, I hacked this gem together. It aims to be [DRY](https://en.wikipedia.org/wiki/Don%27t_repeat_yourself), simple, and unobtrusive. This solution was tailored specifically to my needs and _works for me_; I make no guarantees it's good for everyone.

[Basically](https://github.com/rnevius/rails_turbo_flash/blob/main/lib/rails_turbo_flash/callbacks.rb), it checks for a `turbo_stream` request format and appends a turbo stream to the response body via an `after_action` callback. The entire implementation is only a few lines of code.

## Customizing

To make Rails Turbo Flash look like your app, override the bundled views by adding them to your app. You can manually copy the specific views that you need to `app/views/turbo_flash`, or copy them to your application with the included generator:

```bash
$ rails generate rails_turbo_flash:views
```

See [the bundled views](https://github.com/rnevius/rails_turbo_flash/tree/main/app/views/turbo_flash).

## Contributing

Here are a few ways you can help:

- [Report bugs or suggest new features](https://github.com/rnevius/rails_turbo_flash/issues)
- Fix bugs, add new features, and [submit pull requests](https://github.com/rnevius/rails_turbo_flash/pulls)
- Write, clarify, or fix documentation and tests

## License

Open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
