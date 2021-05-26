1.) N64_Arduino.ino should be uploaded to an Arduino using the Arduino IDE.

2.) Wire the controller to the Arduino
N64 Controller | Arduino
 _______ <== Flat side of cable pointing up
( 1 2 3 )

N64 Pin 1 = Arduino UNO 3.3v
N64 Pin 2 = Arduino UNO Pin 2
N64 Pin 3 = Ardunio UNO Ground

3.) Run the prefered controller initializer program (N64_Controller.pde or N64_Controller_CStickIsMouse.pde) using Processing 1.5 IDE.

4.) Enter controller lock-in mode by pressing Z+L+Start