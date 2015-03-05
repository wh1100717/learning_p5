
setup = ->
    createCanvas(640, 360).parent("main-page")    # 修改 size() 为 createCanvas()
    stroke(255)               # stroke() 保持不变
    noFill()                  # noFill() 保持不变
draw = ->
    background(0)                          # background() is the same
    i = 0
    while i < 200
        bezier(mouseX-(i/2.0), 40+i, 410, 20, 440, 300, 240-(i/16.0), 300+(i/8.0))
        i += 20
