# jb_intern_tasks

## Task 2
---
### Task 2.1

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
In other terminal window (for adding new runner):
```
rosservice call /add_runner 

```
for removing runner:
```
rosservice call /remove_runner [runner_id] 

```

