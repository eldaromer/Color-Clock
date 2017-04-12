int min;
int sec;
int hou;
int colour;
String mind;
String secd;
String houd;
String time;

void setup()
{
  size(200, 200);
  if (frame!= null)
  {
    frame.setAlwaysOnTop(true);
    frame.removeNotify();
    frame.setUndecorated(true);
    frame.addNotify();
  }
}
void draw()
{
  frame.setLocation(displayWidth-200, displayHeight-200);
  sec = second();
  min = minute();
  hou = hour();
  secd = str(sec);
  mind = str(min);
  houd = str(hou);
  colour = 10000*hou + 100*min + sec;
  background(colour);
  time = houd + " " + ":" + " " + mind + " " + ":" + " " + secd;
  textSize(32);
  text(time, 10, 50);
  text("#" + colour, 10, 150);
}
