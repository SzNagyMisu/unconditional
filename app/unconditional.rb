require 'singleton'

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
