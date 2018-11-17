class RubikCub

      constructor: (@id, @x, @rat) ->

      show: () ->

            return "Id: #{@id},\t #{@x},\t #{@rat}"

class Sorter
 
      sortByRating: (data) ->

          for i in [1...data.length]

              for j in [0...data.length - i]

                  if data[j].rat > data[j+1].rat

                     tmp = data[j]

                     data[j] = data[j+1]

                     data[j+1] = tmp        

          return data 

      sortByRating2: (data) ->

           finished = 0

           size = data.length
           
           while finished is 0

                swapped = 0

                for i in [0...size-1]

                    if data[i].rat > data[i+1].rat
 
                       tmp = data[i]

                       data[i] = data[i+1]

                       data[i+1] = tmp; 

                       swapped = 1

                if swapped is 1 then size-- else finished = 1

           return data
                     

basicData = [

           new RubikCub 1, 'p', 5
           new RubikCub 2, 'a', 8
           new RubikCub 3, 'c', 7
           new RubikCub 4, 'x', 1
           new RubikCub 5, 'u', 2          
           new RubikCub 6, 'z', 9
           new RubikCub 7, 'b', 2
]


basicData2 = [
           new RubikCub 1, 'z', 99
           new RubikCub 2, 'y', 88
           new RubikCub 3, 'x', 77
           new RubikCub 4, 'a', 11
           new RubikCub 5, 'b', 33
           new RubikCub 6, 'c', 44
           new RubikCub 7, 'd', 10
]


console.log "Input Data: "

for x in basicData
       console.log x.show() 


console.log "\nOutput Data -->"

sorter = new Sorter
sorted = sorter.sortByRating basicData

for y in sorted
    console.log y.show()

console.log "\nInput Data: "

for x in basicData2
       console.log x.show() 

console.log "\nOutput Data -->"

sorted2 = sorter.sortByRating2 basicData2

for z in sorted2
      console.log z.show()
 
