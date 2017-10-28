int id = 0;

void setup() {
  size(360, 640);
  background(0, 0, 255);
 println(unhex("2a9"));
 println(unhex("351"));
 println(unhex("38"));
}

void draw() {
  if (!mousePressed) return;

  fill(-1);
  ellipse(mouseX, mouseY, 15, 15);

  launch("adb", "shell", "sendevent", "/dev/input/event8", str(3), str(57), str(id));    
  launch("adb", "shell", "sendevent", "/dev/input/event8", str(3), str(53), str(mouseX*3));
  launch("adb", "shell", "sendevent", "/dev/input/event8", str(3), str(54), str(mouseY*3)); 
  launch("adb", "shell", "sendevent", "/dev/input/event8", str(3), str(58), str(200));
  launch("adb", "shell", "sendevent", "/dev/input/event8", str(0), str(2), str(0));
  launch("adb", "shell", "sendevent", "/dev/input/event8", str(0), str(0), str(0));
  }