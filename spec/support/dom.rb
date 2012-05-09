require 'domino'
module Dom
  class Person < Domino
    selector 'ul li'
    attribute :name
    attribute :age
  end
end
