# Safe Constantize

A library that behaves like- and utilizes String#constantize but implements a layer of security.

Read about the security problems here:

http://blog.littleimpact.de/index.php/2008/08/13/constantize-with-care/

## Install

Add to your Gemfile and bundle:

```ruby
gem "safe_constantize"
```

## Usage

```ruby
SafeConstantize.constantize("File", ["File"]) #=> File
SafeConstantize.constantize("File", ["String"]) #=> Error: SafeConstantize::IllegalClassToConstantize
```

## Contributing to safe_constantize

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2015 kaspernj. See LICENSE.txt for
further details.

