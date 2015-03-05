
setup = ->
    createCanvas(800, 600).parent("main-page")
    background(155)
draw = ->
    fill if mouseIsPressed then 0 else 255
    stroke if mouseIsPressed then 255 else 0
    ellipse(mouseX, mouseY, 80, 80) if mouseX isnt 0 and mouseY isnt 0
