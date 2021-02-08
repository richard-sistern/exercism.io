# SETUP

Change directory to the exercism track folder

```shell
cd ruby
bundle init
```

**Gemfile**

```ruby
gem 'minitest'
gem 'guard'
gem 'guard-minitest'

# Add the following to your Gemfile to avoid polling for changes

gem 'wdm', '>= 0.1.0' if Gem.win_platform?

# Run 'gem install win32console' to use color on Windows
```

**Guardfile**

```ruby

```

Bundle and run guard

```shell
bundle
bundle exec guard init
bundle exec guard
```

**Minitest**

[Minitest cheat sheet](https://devhints.io/minitest)
