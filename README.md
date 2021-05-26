# AAP_N64ArduinoAdapter
A project to use an Arduino UNO as an adapter for an N64 controller. It converts the serial data to keypresses.


# Prerequisits
Software

Arduino IDE: https://www.arduino.cc/en/software

Processing 1.5 IDE: https://processing.org/download/

N64S Initializer: https://github.com/Neverway/AAP_N64ArduinoAdapter/releases

--------
Hardware

Arduino UNO (Or other compatible board)

An N64 Controller

Hobby wires

# Installation & Usage

1.) Wire the controller to the Arduino
N64 Controller | Arduino

 _______ <== Flat side of cable pointing up
( 1 2 3 )

N64 Pin 1 = Arduino UNO 3.3v

N64 Pin 2 = Arduino UNO Pin 2

N64 Pin 3 = Ardunio UNO Ground

2.) N64_Arduino.ino should be uploaded to an Arduino using the Arduino IDE.

3.) Run the prefered controller initializer program (N64_Controller.pde or N64_Controller_CStickIsMouse.pde) using Processing 1.5 IDE.

4.) Enter controller lock-in mode by pressing Z+L+Start
