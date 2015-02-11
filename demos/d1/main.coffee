# # d1/main.coffee

# setup = ->
#     console.log("Setup Stage!")
# draw = ->
#     console.log("Draw Stage!")

# setup = ->
#     console.log("Setup Stage!")
# draw = ->
#     console.log("Draw Stage!")
#     ellipse(50, 50, 80, 80)

# setup = ->
#     console.log("Setup Stage!")
#     createCanvas(800, 600).parent("main-page")
# draw = ->
#     console.log("Draw Stage!")
#     ellipse(50, 50, 80, 80)

# x = 0
# setup = ->
#     console.log("Setup Stage!")
#     createCanvas(800, 600).parent("main-page")
# draw = ->
#     console.log("Draw Stage!")
#     fill(0)
#     ellipse(x, 100, 80, 80)
#     x = if x >= 800 then 0 else x + 10

setup = ->
    createCanvas(800, 600).parent("main-page")
    background(155)
draw = ->
    fill if mouseIsPressed then 0 else 255
    ellipse(mouseX, mouseY, 80, 80) if mouseX isnt 0 and mouseY isnt 0
