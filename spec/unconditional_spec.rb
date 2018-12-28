require 'spec_helper'

RSpec.describe God do
  subject { God.instance }

  he 'loves those who are good, righteous, who have done good and no bad and love him.' do
    me = Person.new good: true, righteous: true, done_good: true, done_bad: false, loves_god: true
    expect(subject.loves? me).to be true
  end

  he 'loves those who are good, righteous, who have done good and no bad but do not love him.' do
    me = Person.new good: true, righteous: true, done_good: true, done_bad: false, loves_god: false
    expect(subject.loves? me).to be true
  end

  he 'loves those who are good, righteous, who have done good and bad and love him.' do
    me = Person.new good: true, righteous: true, done_good: true, done_bad: true, loves_god: true
    expect(subject.loves? me).to be true
  end

  he 'loves those who are good, righteous, who have done no good and no bad and love him.' do
    me = Person.new good: true, righteous: true, done_good: false, done_bad: false, loves_god: true
    expect(subject.loves? me).to be true
  end

  he 'loves those who are good but not righteous, who have done good and no bad and love him.' do
    me = Person.new good: true, righteous: false, done_good: true, done_bad: false, loves_god: true
    expect(subject.loves? me).to be true
  end

  he 'loves those who are not good but righteous, who have done good and no bad and love him.' do
    me = Person.new good: false, righteous: true, done_good: true, done_bad: false, loves_god: true
    expect(subject.loves? me).to be true
  end

  he 'loves those who are neither good nor righteous, who have done no good only bad and do not love him.' do
    me = Person.new good: false, righteous: false, done_good: false, done_bad: true, loves_god: false
    expect(subject.loves? me).to be true
  end
end
