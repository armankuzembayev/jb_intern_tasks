#include "ros/ros.h"
#include "geometry_msgs/Point.h"
#include <math.h> 
#include <iostream>


class Runner{
public:
  Runner(){
    point_pub = n_.advertise<geometry_msgs::Point>("point", 1000);
    
  }
  float calculate_error(const float& y){
    
    float error = (2*(float) rand() / RAND_MAX - 1) * y * 0.05;
    return error;
}

  void loop(){
    unsigned int t = static_cast<unsigned int>(ros::Time::now().toSec());
    srand(t);
    
    
    ros::Rate loop_rate(100);
    x = -3.0;
    y = 0.0;
    direction = true;
    while (ros::ok()){
// Equation of a loop: x^2 + y^2 = 5
//y = sqrt(5 - x^2)
      y = sqrt(9 - pow(x, 2));
      error = calculate_error(y);
      ROS_INFO("Y = [%f], Eroor = [%f]", y, error);
      if(direction){
        y = y + error;
        point.x = x;
        point.y = y;
        point.z = 0;
        x += 0.01;
        if(x > 3.0){
          direction = false;
          x = 3.0;
        }
      }

      else{
        y = (-1) * (y + error);
        point.x = x;
        point.y = y;
        point.z = 0;
        x -= 0.01;
        if(x < -3.0){
          direction = true;
          x = -3.0;
        }

      }

//Publishing point
      point_pub.publish(point);
      ros::spinOnce();
      loop_rate.sleep();
    }

  }

private:
  ros::NodeHandle n_;
  ros::Publisher point_pub;
  geometry_msgs::Point point;
  float x;
  float y;
  bool direction;
  float error;
 
}; // End of class



int main(int argc, char **argv){

  ros::init(argc, argv, "runner_task3");
  Runner runner;
  runner.loop();

return 0;

}
