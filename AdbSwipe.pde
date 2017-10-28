ArrayList<PVector>vector = new ArrayList();
Boolean launch_able = true;

int time = 100;

void setup() {
  size(360, 640);
  background(0, 0, 255);
}

void draw() {
  background(0, 0, 255);

  for (int i=0; i<vector.size(); i++) {
    PVector v = vector.get(i);

    fill(-1);
    ellipse(v.x, v.y, 20, 20);
  }

  if (vector.size() != 2) return;

  PVector v1 = vector.get(0);
  PVector v2 = vector.get(1);
  stroke(-1);
  line(v1.x, v1.y, v2.x, v2.y);

  if (!launch_able)return;
  launch("adb shell input touchscreen swipe"+" "+ v1.x+" "+ v1.y+" "+v2.x+" "+v2.y+" "+time);
  launch_able = false;
}

void mousePressed() {
  if (vector.size()%2 == 0) {
    vector = new ArrayList();
    launch_able = true;
  }

  vector.add(new PVector(mouseX, mouseY));
}

