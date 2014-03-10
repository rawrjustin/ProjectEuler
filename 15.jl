# draw it out by number of moves to edge, its the value of euclid's triangle at n*2
# fuck using an algorithm
function moveRD(x,y, max)
    if x < max && y < max
        return moveRD(x+1,y,max) + moveRD(x,y+1,max)
    end
    if y < max
        return moveRD(x,y+1,max)
    end
    if x < max
        return moveRD(x+1,y,max)
    end
    if x == max && y == max
        return 1
    end
end

moveRD(0,0,4)


