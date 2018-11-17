class Animal
      constructor: (@name) ->

      speak: ->
             "#{@name} says #{this.sound()}"

class Cow extends Animal

      sound: -> "moo"       

class Horse extends Animal

      sound: -> "neigh" 

class Dog extends Animal

      sound: -> "Hau!Hau!" 

d = new Dog "Oz"

console.log d.speak()

c = new Cow "Shiva"

console.log c.speak()

