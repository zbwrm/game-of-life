from block import Block

Starter = [[ 1, 0, 0, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 1, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 1, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 1]]

class Constructor:

    def __init__(self, map, h = 8, w = 8):
        self.height = h
        self.width = w
        self.beholder = [[0 for j in range(self.width)] for k in range(self.height)] #block(map[i][k])
        for i in range(self.height):
            for k in range(self.width):
                self.beholder[i][k] = Block(map[i][k])
    
    def __str__(self):
        for i in range(self.height):
#            for k in range(self.width):
            print([self.beholder[i][k].__str__() for k in range(self.width)])



jon = Constructor(Starter)
jon.__str__()
