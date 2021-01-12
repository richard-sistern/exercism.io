# SETUP

```shell
cd ruby
bundle init
```

Configure testing and guard

```ruby
gem 'minitest'
gem 'guard'
gem 'guard-minitest'

# Add the following to your Gemfile to avoid polling for changes

gem 'wdm', '>= 0.1.0' if Gem.win_platform?

# Run 'gem install win32console' to use color on Windows
```

Bundle and run guard
```shell
bundle
bundle exec guard init
bundle exec guard
```


