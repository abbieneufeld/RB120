module Walkable
  def walk
    "#{name} #{gait} forward"
  end
end
class Noble
  attr_reader :name, :title
  include Walkable
  
  def initialize(name,title)
    @name = name
    @title = title
  end

  private

  def gait
    "struts"
  end
  
  public
  def walk
    "#{title} " + super()
  end

end

byron = Noble.new("Byron", "Lord")
p byron.walk