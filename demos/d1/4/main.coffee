x = 0
setup = ->
    console.log("Setup Stage!")
    createCanvas(800, 600).parent("main-page")
draw = ->
    console.log("Draw Stage!")
    fill(0)
    ellipse(x, 100, 80, 80)
    x = if x >= 800 then 0 else x + 10
