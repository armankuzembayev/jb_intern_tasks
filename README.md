# jb_intern_tasks

## Instructions

Clone repository to your workspace/src folder:
```
git clone https://github.com/armankuzembayev/jb_intern_tasks.git 
```
In your workspace folder:
```
catkin_make
source devel/setup.bash
```


## Task 1
---
Map is located in task1 folder. The dataset (bag file) was taken from http://projects.csail.mit.edu/stata/downloads.php website (2011-01-24-06-18-27.bag)

## Task 2
---
### Task 2.1

### Description
Runner (runner_task1 node) moves with some trajectory and each time publishes its coordinates (x, y, z) via '/point' topic (geometry_msgs/Point message).

Observer (observer_task1 node) listens to the '/point' topic and prints the results to the console.

### Usage
In terminal window:
```
rosrun jb_intern_tasks runner_task1.py 
```
In other terminal window:
```
rosrun jb_intern_tasks observer_task1.py 
```

### Task 2.2

### Description
Runner (runner_task2 node) moves with some trajectory that is closed to a loop and each time publishes its coordinates (x, y, z) via '/point' topic (geometry_msgs/Point message).

Observer (observer_task2 node) listens to the '/point' topic and saves all positions of the runner. Then it publishes the whole trajectory of the runner through 'visualization_marker' topic (visualization_msgs/Marker message). After that it is possible to observe the path of the runner in rviz.

### Usage
In terminal window:
```
rosrun jb_intern_tasks runner_task2 
```
In other terminal window:
```
rosrun jb_intern_tasks observer_task2 
```
In other terminal window:
```
roslaunch jb_intern_tasks rviz.launch 
```

### Task 2.3

### Usage
In terminal window:
```
rosrun jb_intern_tasks runner_task3 
```
In other terminal window:
```
rosrun jb_intern_tasks observer_task3 
```
In other terminal window:
```
roslaunch jb_intern_tasks rviz.launch 
```
### Task 2.4

### Usage
In terminal window:
```
rosrun jb_intern_tasks runner_task4.py 
```
In other terminal window:
```
rosrun jb_intern_tasks observer_task4.py
```
In other terminal window (for adding or removing new runner):
```
rosservice call /add_runner 
rosservice call /remove_runner [runner_number] (For example: rosservice call /remove_runner 1)
```

