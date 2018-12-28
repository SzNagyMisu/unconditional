# unconditional

A poem in [ruby](https://www.ruby-lang.org/en/) tested with [rspec](https://relishapp.com/rspec)

## The poem

```ruby
# unconditional

class God
  include Singleton

  def loves? me
    if me.good? && me.righteous? &&
        me.done_good? && !me.done_bad? &&
        me.loves?(self)
      true
    else
      true
    end
  end
end
```

## Testing

If you want to run the tests, `clone` this repo, run `bundle` then `rspec`:

```bash
$ git clone git@github.com:SzNagyMisu/unconditional.git
$ cd unconditional/
$ bundle
$ rspec
```

They should be all green.
