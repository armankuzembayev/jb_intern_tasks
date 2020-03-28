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

Map is located in task1 folder. The dataset (bag file) was taken from http://projects.csail.mit.edu/stata/downloads.php website (2011-01-24-06-18-27.bag)
---
## Task 2
---
### Task 2.1

### Description
Runner (runner_task1 node) is moving with some trajectory and each time publishes its coordinates(x, y, z) via '/point' topic (geometry_msgs/Point message)

Observer (observer_task1 node) is listening to '/point' topic and prints the result to console.

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

