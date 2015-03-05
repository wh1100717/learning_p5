setup = ->
    console.log("Setup Stage!")
    createCanvas(800, 600).parent("main-page")
draw = ->
    console.log("Draw Stage!")
    ellipse(50, 50, 80, 80)

