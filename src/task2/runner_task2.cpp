#include "ros/ros.h"
#include "geometry_msgs/Point.h"
#include <math.h> 

// Equation of a loop: x^2 + y^2 = 5
//y = sqrt(5 - x^2)

class Runner{
public:
  Runner();
  
private:
  void loop();
  ros::NodeHandle n_;
  ros::Publisher point_pub;
  geometry_msgs::Point point;
  bool direction;
 
}; // End of class

Runner::Runner(){
    point_pub = n_.advertise<geometry_msgs::Point>("point", 1000);
    loop();
}

void Runner::loop(){
    ros::Rate loop_rate(100);
    float x = -3.0;
    float y = 0.0;
    direction = true;
    while (ros::ok()){
      y = sqrt(9 - pow(x, 2));
      if(direction){
        y = y;
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
        y = (-1) * y;
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

int main(int argc, char **argv){

  ros::init(argc, argv, "runner_task2");
  Runner runner;

return 0;

}
