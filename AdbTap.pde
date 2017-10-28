 
  final String [] AdbTap = {"adb", "shell", "input", "touchscreen", "tap", "", ""};
  
  void setup() {
    size(360, 640);//Xperoa XZの解像度は 1080 x 1920
    background(0, 0, 255);
  }
  
  void draw() {
    if (!mousePressed) return;
  
    fill(-1);
    ellipse(mouseX, mouseY, 15, 15);
  
    AdbTap[5] = str(mouseX*3);
    AdbTap[6] = str(mouseY*3);
  
    launch(AdbTap);
  }