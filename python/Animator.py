import numpy as np
import matplotlib.pyplot as plt 
import matplotlib.animation as animation

def generate_data():
    
    return a - b 

def update(data):
    mat.set_data(data)
    return mat 

def data_gen():
    while True:
        yield generate_data()

fig, ax = plt.subplots()
mat = ax.matshow(generate_data())
plt.colorbar(mat)
ani = animation.FuncAnimation(fig, update, data_gen, interval=500, save_count=50)
plt.show()