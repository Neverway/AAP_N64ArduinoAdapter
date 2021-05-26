

//////////////////////////////////////////////////
// N64S Arduino Serial Initializer
//   Created by Peter Den Hartog & Andrew Brown
//   Updated by Arthur W. Sheldon AKA Lizband_UCC
//   Controller graphic by themizarkshow
//   
// (I)NFO
//   To lock-in the controller settings press [L + R + Z + Start] on the controller
//   If you get an error relating to the serial port try changing line. If you are
//   sure that the serial port is correct, try resetting the arduino or restarting
//   the initializer. (I know, it's supper iffy.)
//////////////////////////////////////////////////

import processing.serial.*;
import java.awt.Robot;
import java.awt.AWTException;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;

Serial N64Connection;
String buttons;
Robot VKey;
boolean controlsInit; // Set controller lock-in status
PImage backgroundImage,controller,overlayA,overlayB,statusImage; // Set image variables
String[] pressed;
boolean a,b,z,s,cu,cd,cl,cr,dd,du,dr,dl,ll,rr,u,d,l,r; // Set button state booleans

void setup() 
{  
  String portName = Serial.list()[0]; // CHANGE 0 TO YOUR SERIAL PORT! If you get an index out of bounds error, try lowering the number!
  N64Connection = new Serial(this, portName, 115200); // Set the serial port to talk over
  pressed = split("a", ' ');;
  size(540,300); // Set the window size
  frameRate(24); // Set the framerate of the window
  try
  {
    VKey = new Robot();
  }
  catch(AWTException a){}
  N64Connection.bufferUntil('\n');
  buttons = "Hell0 m0t0 ";
  backgroundImage = loadImage("Source/Background.png");
  controller = loadImage("Source/N64 Controller.png");
  overlayA = loadImage("Source/blank.png");
  overlayB = loadImage("Source/blank.png");
  statusImage = loadImage("Source/Status.png");
}

// Draw the initializer window
void draw()
{
  //background(color(60,60,60));
  image(backgroundImage, 0, -200);
  image(controller, 0, 0);
  fill(255, 255, 255);
  image(overlayA, 0, 0);
  image(overlayB, 0, 0);
  image(statusImage, 0, 0);
}

// Play the lock-in animation amd lock the device
void playAnimation1()
{
  // Appear
  overlayA = loadImage("Source/Anim1/0-1.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-2.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-3.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-4.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-5.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-6.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/1-1.png");
  delay(350);
  
  // Talk
  overlayA = loadImage("Source/Anim1/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-1.png");
  overlayB = loadImage("Source/Anim2/0-3.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-1.png");
  overlayB = loadImage("Source/Anim2/0-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-1.png");
  overlayB = loadImage("Source/Anim2/0-1.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-1.png");
  delay(350);
  
  // Disappear
  overlayA = loadImage("Source/Anim1/1-1.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-6.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-5.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-4.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-3.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-2.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-1.png");
  delay(50);
  overlayA = loadImage("Source/blank.png");
  overlayB = loadImage("Source/blank.png");
  delay(350);
  
  
  // Appear 2
  overlayA = loadImage("Source/Anim1/0-1.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-2.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-3.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-4.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-5.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-6.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/2-1.png");
  delay(350);
  
  // Talk 2
  overlayA = loadImage("Source/Anim1/2-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/2-1.png");
  overlayB = loadImage("Source/Anim2/0-3.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/2-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/2-1.png");
  overlayB = loadImage("Source/Anim2/0-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/2-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/2-1.png");
  overlayB = loadImage("Source/Anim2/0-1.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/2-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/2-1.png");
  delay(350);
  
  // Disappear 2
  overlayA = loadImage("Source/Anim1/2-1.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-6.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-5.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-4.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-3.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-2.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-1.png");
  delay(50);
  overlayA = loadImage("Source/blank.png");
  overlayB = loadImage("Source/blank.png");
  delay(350);
  
  
  // Appear 3
  overlayA = loadImage("Source/Anim1/0-1.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-2.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-3.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-4.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-5.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-6.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/1-1.png");
  delay(350);
  
  // Talk 3
  overlayA = loadImage("Source/Anim1/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-1.png");
  overlayB = loadImage("Source/Anim2/1-4.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-1.png");
  overlayB = loadImage("Source/Anim2/1-3.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-1.png");
  overlayB = loadImage("Source/Anim2/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-1.png");
  overlayB = loadImage("Source/Anim2/1-1.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-2.png");
  delay(150);
  overlayA = loadImage("Source/Anim1/1-1.png");
  delay(350);
  
  // Disappear 3
  overlayA = loadImage("Source/Anim1/1-1.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-6.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-5.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-4.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-3.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-2.png");
  delay(50);
  overlayA = loadImage("Source/Anim1/0-1.png");
  delay(50);
  overlayA = loadImage("Source/blank.png");
  overlayB = loadImage("Source/blank.png");
  delay(350);
  statusImage = loadImage("Source/Status1.png");
  controlsInit = true;
}

// Display the last pressed button on the GUI prior to locking-in
void controlCheck()
{
  if(a){overlayA = loadImage("Source/ControlsA.png");}
  if(b){overlayA = loadImage("Source/ControlsB.png");}
  if(s){overlayA = loadImage("Source/ControlsS.png");}
  
  if(du){overlayA = loadImage("Source/ControlsDU.png");}
  if(dd){overlayA = loadImage("Source/ControlsDD.png");}
  if(dl){overlayA = loadImage("Source/ControlsDL.png");}
  if(dr){overlayA = loadImage("Source/ControlsDR.png");}
  
  if(cu){overlayA = loadImage("Source/ControlsCU.png");}
  if(cd){overlayA = loadImage("Source/ControlsCD.png");}
  if(cl){overlayA = loadImage("Source/ControlsCL.png");}
  if(cr){overlayA = loadImage("Source/ControlsCR.png");}
  
  if(ll){overlayA = loadImage("Source/ControlsL.png");}
  if(rr){overlayA = loadImage("Source/ControlsR.png");}
  //if(z){overlayA = loadImage("Source/ControlsZ.png");}
  
  // Lock-in check
  if(z && ll && s)
  {
    playAnimation1();
  }
}

// Run & translate the Serial events to key inputs
void serialEvent(Serial N64Connection)
{
  // bits: A, B, Z, Start, Dup, Ddown, Dleft, Dright
  // bits: 0, 0, L, R, Cup, Cdown, Cleft, Cright
  buttons = N64Connection.readString();
  pressed = split(buttons, ' ');
  print(buttons);
  if(pressed.length >= 3)
  {
    if (!controlsInit)
    {
      controlCheck();
    }
  if(!u && Integer.valueOf(pressed[2]) > 20)
  {
    VKey.keyPress(KeyEvent.VK_UP);
    u = !u;
  } else if (u && Integer.valueOf(pressed[2]) < 20) {
    VKey.keyRelease(KeyEvent.VK_UP);
    u = !u;
  }
  if(!d && Integer.valueOf(pressed[2]) < -20)
  {
    VKey.keyPress(KeyEvent.VK_DOWN);
    d = !d;
  } else if (d && Integer.valueOf(pressed[2]) > -20) {
    VKey.keyRelease(KeyEvent.VK_DOWN);
    d = !d;
  }
  if(!r && Integer.valueOf(pressed[1]) > 20)
  {
    VKey.keyPress(KeyEvent.VK_RIGHT);
    r = !r;
  } else if (r && Integer.valueOf(pressed[1]) < 20) {
    VKey.keyRelease(KeyEvent.VK_RIGHT);
    r = !r;
  }
  if(!l &&Integer.valueOf(pressed[1]) < -20)
  {
    VKey.keyPress(KeyEvent.VK_LEFT);
    l = !l;
  } else if(l && Integer.valueOf(pressed[1]) > -20) {
    VKey.keyRelease(KeyEvent.VK_LEFT);
    l = !l;
  }
  for (int i = 0; i <= 15; i++)
  {
    if (pressed[0].charAt(i) == ('4'))
    {
      switch(i)
      {
      case 0:
      if(!a)
      {
        VKey.keyPress(KeyEvent.VK_A);// A
        a = !a;
      }
        break;
      case 1:
      if(!b)
      {
        VKey.keyPress(KeyEvent.VK_B);// B
        b = !b;
      }
        break;
      case 2:
      if(!z)
      {
        VKey.keyPress(KeyEvent.VK_Z);// Z
        z = !z;
      }
        break;
      case 3:
        if(!s) 
        {
          VKey.keyPress(KeyEvent.VK_S);// Start
          s = !s;
        }
        break;
      case 4:
        if(!du) 
        {
          VKey.keyPress(KeyEvent.VK_NUMPAD8);// DUp
          du = !du;
        }
        break;
      case 5:
        if(!dd) 
        {
          VKey.keyPress(KeyEvent.VK_NUMPAD2);// DDown
          dd = !dd;
        }
        break;
      case 6:
        if(!dl) 
        {
          VKey.keyPress(KeyEvent.VK_NUMPAD4);// DLeft
          dl = !dl;
        }
        break;
      case 7:
        if(!dr) 
        {
          VKey.keyPress(KeyEvent.VK_NUMPAD6);// DRight
          dr = !dr;
        }
        break;
      case 10:
        if(!ll) 
        {
          VKey.keyPress(KeyEvent.VK_T);// L
          ll = !ll;
        }
        break;
      case 11:
        if(!rr) 
        {
          VKey.keyPress(KeyEvent.VK_R);// R
          rr = !rr;
        }
        break;  
      case 12:
        if(!cu) 
        {
          VKey.keyPress(KeyEvent.VK_I);// CUp
          cu = !cu;
        }
        break;
      case 13:
        if(!cd) 
        {
          VKey.keyPress(KeyEvent.VK_K);// CDown
          cd = !cd;
        }
        break;
      case 14:
        if(!cl) 
        {
          VKey.keyPress(KeyEvent.VK_J);// CLeft
          cl = !cl;
        }
        break;
      case 15:
        if(!cr) 
        {
          VKey.keyPress(KeyEvent.VK_L);// CRight
          cr = !cr;
        }
        break;       
    }}
    if (pressed[0].charAt(i) == ('0'))
    {
      switch(i)
      {
      case 0:
      if(a)
      {
        VKey.keyRelease(KeyEvent.VK_A);// A
        a = !a;
      }
        break;
      case 1:
      if(b)
      {
        VKey.keyRelease(KeyEvent.VK_B);// B
        b = !b;
      }
        break;
      case 2:
      if(z)
      {
        VKey.keyRelease(KeyEvent.VK_Z);// Z
        z = !z;
      }
        break;
      case 3:
        if(s) 
        {
          VKey.keyRelease(KeyEvent.VK_S);// Start
          s = !s;
        }
        break;
      case 4:
        if(du) 
        {
          VKey.keyRelease(KeyEvent.VK_NUMPAD8);// DUp
          du = !du;
        }
        break;
      case 5:
        if(dd) 
        {
          VKey.keyRelease(KeyEvent.VK_NUMPAD2);// DDown
          dd = !dd;
        }
        break;
      case 6:
        if(dl) 
        {
          VKey.keyRelease(KeyEvent.VK_NUMPAD4);// DLeft
          dl = !dl;
        }
        break;
      case 7:
        if(dr) 
        {
          VKey.keyRelease(KeyEvent.VK_NUMPAD6);// DRight
          dr = !dr;
        }
        break;
      case 10:
        if(ll) 
        {
          VKey.keyRelease(KeyEvent.VK_T);// L
          ll = !ll;
        }
        break;
      case 11:
        if(rr) 
        {
          VKey.keyRelease(KeyEvent.VK_R);// R
          rr = !rr;
        }
        break;  
      case 12:
        if(cu) 
        {
          VKey.keyRelease(KeyEvent.VK_I);// CUp
          cu = !cu;
        }
        break;
      case 13:
        if(cd) 
        {
          VKey.keyRelease(KeyEvent.VK_K);// CDown
          cd = !cd;
        }
        break;
      case 14:
        if(cl) 
        {
          VKey.keyRelease(KeyEvent.VK_J);// CLeft
          cl = !cl;
        }
        break;
      case 15:
        if(cr) 
        {
          VKey.keyRelease(KeyEvent.VK_L);// CRight
          cr = !cr;
        }
        break;  
      }}}}
}
