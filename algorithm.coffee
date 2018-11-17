class Algorithm

      constructor: (@x, @y) ->

      Euclid: ->

             this.gdc @x, @y

      gdc: (@a, @b) ->

           if @b == 0 then @a else this.gdc @b, @a % @b

gcd = (x, y) ->
	
       if y == 0 then x else gcd y, x % y


get = new Algorithm 100, 21

console.log get.Euclid()

console.log gcd 100, 20 

     
