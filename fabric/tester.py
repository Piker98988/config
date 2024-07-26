import fabric # importing the base pacakge
from fabric.widgets.window import Window # grabs the Window class from Fabric
from fabric.widgets.label import Label # gets the Label class
from fabric.widgets.flowbox import FlowBox
from fabric.widgets.chart import Chart
from fabric.widgets.circular_progress_bar import CircularProgressBar
global x
x = 0

def test():
    x+=1
    return x

window = Window() # creates a new instance of the Window class and assign it to the `window` variable
label = Label("Hello, World") # creates a new Label instance with the content being "Hello, World" and assigns it to `label`
flowbox = FlowBox()

chart = Chart(update_interval=10, data_function=test)
window.add(label) # adds the label to the window
window.add(flowbox)
window.add(chart)
window.show_all() # to make the window and all of its children appear

fabric.start() # to start fabric
