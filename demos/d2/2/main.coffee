
x = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
y = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
segLength = 18

setup = ->
    createCanvas(640, 360)
    strokeWeight(9)
    stroke(255, 100)
draw = ->
    background(0)
    drawSegment(0, mouseX, mouseY)
    i = 0
    while i < x.length - 1
        drawSegment i + 1, x[i], y[i]
        i++
drawSegment = (i, xin, yin)->
    dx = xin - x[i]
    dy = yin - y[i]
    angle = atan2(dy, dx)
    x[i] = xin - cos(angle) * segLength
    y[i] = yin - sin(angle) * segLength
    segment x[i], y[i], angle
segment = (x, y, a) ->
    push()
    translate(x, y)
    rotate(a)
    line(0, 0, segLength, 0)
    pop()
