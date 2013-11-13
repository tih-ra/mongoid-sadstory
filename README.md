# Mongoid::Sadstory

Adds support for multiparameter fields to mongoid 4.x series.

# Sad story.

This is a sad story - mongoid maintainers decided to drop support for multiparamter fields in mongoid 4.x, leaving it to ActiveSupport/ActiveModel and rails. 

Sadly there was no extraction of this feature ready after ror 4.x was released and since mongoid 4.x was the only version working with ror 4.x series this meant you could not update your application from ror 3.x to 4.x if you were using mongoid and you had date/time/datetime fields somewhere in your application. 

That's just sad. 

What I did is just extracted our hacks to make multiparams working again. Make sure your specs are passing before using this in prod systems...

## Another sad story.

If you were using attr_accessible+roles with mongoid you will be 'glad' to hear that's it's alsmost impossible to use it now with 4.x series - since [protected_attributes](https://github.com/rails/protected_attributes) gem adds this feature only for ActiveRecord.

With mongoid all you can do is `include ActiveModel::MassAssignmentSecurity` which adds attr_accessible method to mongoid, but does not add roles support (I've tried to hack it through, but there were to many changes in mongoid 3.x and 4.x)

## Last sad story.

Making this gem was sad and I'm sad now. I hope to remove it one day, once rails team will manage to extract mulitparams support out of AR to AM and put an end this madness. 

## Installation

Add this line to your application's Gemfile:

    gem 'mongoid-sadstory'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid-sadstory


## Contributing

1. Furk it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
