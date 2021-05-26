module Walkable
  def walk
    "#{name} #{gait} forward"
  end

class Person
  attr_reader :name
  include Walkable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  attr_reader :name
    include Walkable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  attr_reader :name
    include Walkable
  def initialize(name)
    @name = name
  end

  private

  def gait
    "runs"
  end
end