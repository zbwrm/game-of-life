import numpy as np
import matplotlib.pyplot as plt 
import matplotlib.animation as animation

from block import Block

Starter = [[ 0, 0, 1, 0, 0, 0, 0, 0],
           [ 1, 0, 1, 0, 0, 0, 0, 0],
           [ 0, 1, 1, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 0],
           [ 0, 0, 0, 0, 0, 0, 0, 0]]


bigboard =  [[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,1,1,1,1,1,0,1,1,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,1,1,1,1,1,0,1,1,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,1,1,0,1,1,1,1,1,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,1,1,0,1,1,1,1,1,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
             [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]

largeBoard = np.arange(4096).reshape(64, 64)
largeBoard.fill(0)
coordsx = [1,0,1,2,2]
coordsy = [0,2,2,2,1]

coord = [[1,0],[0,2],[1,2],[2,2],[2,1],[7,0],[6,2],[7,2],[8,2],[8,1]]


for i in range(len(coord)):
        largeBoard[coord[i][0]][coord[i][1]] = 1


debugger = [[0,0,1,0,0],
            [1,0,1,0,0],
            [0,1,1,0,0],
            [0,0,0,0,0],
            [0,0,0,0,0]]


class Constructor:

    def __init__(self, map):
        self.height = len(map)
        self.width = len(map[0])
        self.beholder = [[0 for j in range(self.width)] for k in range(self.height)] #block(map[i][k])
        for i in range(self.height):
            for k in range(self.width):
                self.beholder[i][k] = Block(map[i][k])
    
    def getStates(self):
        c = [[0 for q in range(self.width)] for w in range(self.height)]
        for i in range(self.height):
            for k in range(self.width):   
                c[i][k] = self.beholder[i][k].oldState() #c = self.beholder[i][k].oldState() if choice == 0 else 
        return c

    def push(self):
        copy = self.getStates()
              
        #  n0   n1   n2
        #  
        #  n7  CELL  n3
        #
        #  n6   n5   n4
        
        n = [0 for i in range(8)]
        for i in range(self.height):
            for k in range(self.width):  
                #n0
                try:
                    n[0] = copy[i-1][k-1]
                except IndexError:
                    pass
                #n1
                try:
                    n[1] = copy[i-1][k]
                except IndexError:
                    pass
                #n2
                try:
                    n[2] = copy[i-1][k+1]
                except IndexError:
                    pass
                #n3
                try:
                    n[3] = copy[i][k+1]
                except IndexError:
                    pass
                #n4
                try:
                    n[4] = copy[i+1][k+1]
                except IndexError:
                    pass
                #n5
                try:
                    n[5] = copy[i+1][k]
                except IndexError:
                    pass
                #n6
                try:
                    n[6] = copy[i+1][k-1]
                except IndexError:
                    pass
                #n7
                try:
                    n[7] = copy[i][k-1]
                except IndexError:
                    pass
                # there exists a cleaner way to do this, 
                # this is an artifact for the logic gate implementation
                self.beholder[i][k].update(n[0],n[1],n[2],n[3],n[4],n[5],n[6],n[7])         


    def __str__(self):
        for i in range(self.height):
            print([self.beholder[i][k].__str__() for k in range(self.width)])

jon = Constructor(debugger)

# def generate_data():
#     jon.push()
#     jon.__str__()
#     print()

#     return  jon.getStates()

# def update(data):
#     mat.set_data(data)
#     return mat 

# def data_gen():
#     while True:
#         yield generate_data()

# fig, ax = plt.subplots()
# mat = ax.matshow(generate_data())
# plt.colorbar(mat)
# ani = animation.FuncAnimation(fig, update, data_gen, interval=50,save_count=50)
# plt.show()
# ani.save('animation.mp4')



for loopy in range(13):
    jon.__str__()
    jon.push()
    print()
