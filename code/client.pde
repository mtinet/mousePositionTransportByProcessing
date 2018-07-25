import processing.net.*;

Client client;

void setup() {
  size(400, 400);
  client = new Client(this, "localhost", 5204);
  background(255);
}

void clientEvent(Client client) {
  String in = client.readStringUntil('\n');
  if(in != null) {
    println("Receiving:" + in);
    int[] vals = int(splitTokens(in, ",\n"));
    
    fill(255, 0, 0, 100);
    noStroke();
    rect(vals[0], vals[1], 16, 16);
    println(vals);
  }
}

void draw() {
}

void mouseDragged() {
  String out = mouseX + "," + mouseY + "\n";
  client.write(out);
  
  fill(0, 100);
  noStroke();
  ellipse(mouseX, mouseY, 16, 16);
  println("Sending: " + out);
}
