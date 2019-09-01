import java.awt.AWTException;
import java.awt.Robot;
import java.awt.event.KeyEvent;

Robot robot;


void setup() {
  size(400, 400);
  frameRate(1);
 
  //Let's get a Robot...
  try { 
    robot = new Robot();
  } catch (AWTException e) {
    e.printStackTrace();
    exit();
  }
}

int counter = 0;
float upperbound = 5;
float upperbounddefault = 90;
int variancefactor = 10;
void draw() {
  counter ++;
  if (counter >= upperbound) {
    robot.keyPress(KeyEvent.VK_SPACE);
    //If we want a delay here, that gets a little bit more complicated...
    robot.keyRelease(KeyEvent.VK_SPACE);
    counter = 0;
    upperbound = upperbounddefault + random(-variancefactor, variancefactor);
  }
}