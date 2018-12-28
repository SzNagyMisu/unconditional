class Person
  def initialize good: false, righteous: false, done_good: false, done_bad: true, loves_god: false
    @good, @righteous, @done_good, @done_bad, @loves_god = good, righteous, done_good, done_bad, loves_god
  end

  %i[ good righteous done_good done_bad ].each do |method|
    define_method :"#{method}?" do
      instance_variable_get :"@#{method}"
    end
  end

  def loves? whom
    God === whom && @loves_god
  end
end
