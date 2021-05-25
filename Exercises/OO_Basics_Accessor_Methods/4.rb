class Person
  attr_accessor :first_name
  attr_writer :last_name
  
  private
  attr_reader :last_name
  
  public
  def first_equals_last?
    first_name == last_name
  end
end

person1 = Person.new
person1.first_name = 'Dave'
person1.last_name = 'Smith'
puts person1.first_equals_last?