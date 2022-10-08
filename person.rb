require 'pry'

class Person
  attr_reader :id

  attr_accessor :name, :age

  def initialize(parent_permission: true)
    # binding.pry
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # Public
  def can_use_services?
    # binding.pry
    of_age? || @parent_permission
  end
  public :can_use_services?

  # Private method
  private

  def of_age?
    # binding.pry
    if @age >= 18
      true
    elsif @age < 18
      false
    end
  end
end

obj = Person.new('Hatim', 35)
p obj.name = 'Ruby'
p obj.age = 44
p obj.id
p obj.can_use_services?
