# # d1/main.coffee

i = 0

setup = ->
    alert("Setup Stage")
    console.log("Setup Stage!")
draw = ->
    alert("Draw Stage! It will repeat~ check `console.log` out") if i is 0
    i++
    console.log("Draw Stage!")
