#include "ros/ros.h"
#include "geometry_msgs/Point.h"
#include "nav_msgs/Path.h"
#include "geometry_msgs/PoseStamped.h"
#include <math.h> 
#include <iostream>
#include <random>

class Runner{
public:
  Runner();
private:
  float calculate_error(float mean); // generate normally distributed value with error less than 5% of the mean
  geometry_msgs::PoseStamped get_pose(float x, float y); // used to initialize geometry_msgs::PoseStamped message and plug in values
  void loop(); // main loop for recalculating the path; path equation: x^2 + y^2 = 9
  ros::NodeHandle n_;
  ros::Publisher path_pub;
  geometry_msgs::Point point;
  nav_msgs::Path path;
  geometry_msgs::PoseStamped pose;
  float x;
  float y;
  float y_with_error;
}; // End of class

Runner::Runner(){
    path_pub = n_.advertise<nav_msgs::Path>("path", 10);
    loop();
}

float Runner::calculate_error(float mean){
    std::random_device randomness_device{};
    std::mt19937 pseudorandom_generator{randomness_device()};

    float std_dev = std::abs(0.05 * mean/2);
    float min_val = std::min(0.95 * mean, 1.05 * mean);
    float max_val = std::max(0.95 * mean, 1.05 * mean);
    std::normal_distribution<> distribution{mean, std_dev};
    float sample = distribution(pseudorandom_generator);
    return std::max(min_val, std::min(sample, max_val));
}

geometry_msgs::PoseStamped Runner::get_pose(float x, float y){
    geometry_msgs::PoseStamped pose;
    pose.header.frame_id = "/my_point";
    pose.header.stamp = ros::Time::now();
    pose.pose.orientation.w = 1.0;    
    float y_with_error = calculate_error(y);

    pose.pose.position.x = x;
    pose.pose.position.y = y_with_error;
    pose.pose.position.z = 0;
    return pose;
}

void Runner::loop(){
    ros::Rate loop_rate(5); // 5hz
    while (ros::ok()){
	path.header.frame_id = "/my_path";
	path.header.stamp = ros::Time::now();
    
	std::vector<geometry_msgs::PoseStamped> v;
	y_with_error = 0.0;
	x = -3.0;
	while (x <= 3){ 
	  y = sqrt(9 - pow(x, 2));
	  pose = get_pose(x, y);
	  v.push_back(pose);
	  x += 0.01;
	}
	x = 3.0;
	while (x >= -3){
	  y = sqrt(9 - pow(x, 2)) * (-1);
	  pose = get_pose(x, y);
	  v.push_back(pose);
	  x -= 0.01;
	}

        //Publishing path
        path.poses = v;
        path_pub.publish(path);
        ros::spinOnce();
        loop_rate.sleep();
    }

}

int main(int argc, char **argv){
    ros::init(argc, argv, "runner_task3");
    Runner runner;

    return 0;
}
