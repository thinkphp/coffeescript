class Human

      constructor: (@id, @fname, @lname, @country, @sal, @rat) ->

      show: () ->

            return "Id: #{@id}, #{@fname}, #{@lname}, #{@country}, #{@sal},\t #{@rat}"

database = [

         new Human 1, "Adrian", "Statescu", "Romania", 100, 3

         new Human 2, "Scott", "Jurek", "Norway", 30, 4

         new Human 3, "Kilian", "Mark", "Denmark", 77, 1

         new Human 4, "Jose", "Toure", "CANADA", 11, 9

         new Human 5, "Marius", "Tresor", "USA", 334, 2

         new Human 6, "Michael", "Laudrup", "Sweden", 441, 8

         new Human 7, "Diego", "Maradona", "Zurich", 331, 11

         new Human 8, "Hugo", "Sanchez", "Mexic", 201, 73

         new Human 9, "Emilio", "Butragueno", "Spain", 931, 101

         new Human 9, "Gabriel", "Balint", "Rom", 90, 7
]

class Algorithm

      constructor: ->

      sort: (data) ->

            this._bs_by_sal(data)

      _bs_by_sal: (data) ->
 
           finished = 0 

           size = data.length 

           while finished is 0

                 swapped = 0

                 for i in [0...size-1]     

                     if data[i].sal < data[i+1].sal 

                        holder = data[i]

                        data[i] = data[i+1]

                        data[i+1] = holder

                        swapped = 1

                 if swapped is 1 then size-- else finished = 1

           return data   

      _cs_by_rat: (data) ->

          shrinkFactor = 1.3

          swapped = 1

          gap = data.length

          n = data.length

          while gap > 1 or swapped is 1

                swapped = 0

                if gap > 1 then gap = parseInt gap / shrinkFactor

                i = 0

                while i + gap < n

                      if data[i].rat > data[i+gap].rat 

                         holder = data[i]

                         data[i] = data[i+gap]

                         data[i+gap] = holder;

                         swapped = 1  

                      i++       

          return data  

console.log "Input Data: \n"

for x in database

    console.log x.show()

console.log "\nSorted Data by Salary: \n"

alg = new Algorithm

sorted = alg.sort(database)

for y in sorted

    console.log y.show() 
