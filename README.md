# jb_intern_tasks

## Instructions

Clone a repository to your workspace/src folder:
```
git clone https://github.com/armankuzembayev/jb_intern_tasks.git 
```
In terminal go to your workspace folder:
```
catkin_make
source devel/setup.bash
```


## Task 1
---
Map is located in the task1 folder. The dataset (bag file) was taken from http://projects.csail.mit.edu/stata/downloads.php website (2011-01-24-06-18-27.bag).

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
roslaunch jb_intern_tasks rviz.launch 
```
In other terminal window:
```
rosrun jb_intern_tasks runner_task2 
```
In other terminal window:
```
rosrun jb_intern_tasks observer_task2 
```

### Task 2.3

### Description
Runner (runner_task2 node) moves with some trajectory that is closed to a loop and each time publishes its path via '/path' topic (nav_msgs/Path message), but with some error that is normally distributed and not greater than 5%.

Observer (observer_task2 node) listens to the '/path' topic and saves the sum of all positions of the runner along the path and stores the number of received messages. After that it calculates the simple smoothing average for obtaining smoothed path. Then it publishes the smoothed trajectory of the runner through 'visualization_marker' topic (visualization_msgs/Marker message). After that it is possible to observe the path of the runner in rviz.


### Usage
In terminal window:
```
roslaunch jb_intern_tasks rviz.launch 
```
In other terminal window:
```
rosrun jb_intern_tasks runner_task3 
```
In other terminal window:
```
rosrun jb_intern_tasks observer_task3 
```

### Task 2.4

### Description
Runner(s) (runner_task1 node) move(s) with some trajectory and each time publishes the coordinates (x, y, z) of each runner via '/coordinates' topic (geometry_msgs/PoseArray message). It is always possible to increase the number of runners by using standard service std_srvs/Trigger service, which adds new Runner object. Moreover, it is also possible to remove the runner with some runner_id by using custom service (jb_intern_tasks/remove_runner service).

Observer (observer_task1 node) listens to the '/coordinates' topic and prints the coordinates of all runners to the console.

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
rosservice call /remove_runner [runner_number]
```
For example: [rosservice call /remove_runner 1] will remove the runner # 1.

