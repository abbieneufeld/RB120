class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end

end

class Dog < Pet
  def speak
    "bark!"
  end
  
  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Cat < Pet
  def speak
    "meow"
  end
end
  

class Bulldog < Dog
  def swim
    "can't swim"
  end
end

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

=begin
The method lookup path is the order in which Ruby will traverse the class hierarchy to look for methods to invoke. For example, say you have a Bulldog object called bud and you call: bud.swim. Ruby will first look for a method called swim in the Bulldog class, then traverse up the chain of super-classes; it will invoke the first method called swim and stop its traversal.

In our simple class hierarchy, it's pretty straight forward. Things can quickly get complicated in larger libraries or frameworks. To see the method lookup path, we can use the .ancestors class method.

=end

Bulldog.ancestors       # => [Bulldog, Dog, Pet, Object, Kernel, BasicObject]