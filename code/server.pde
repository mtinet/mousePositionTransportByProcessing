import processing.net.*;
PFont f;

Server server;
String incomingMessage = "";

void setup() {
  size(200, 200);
  server = new Server(this, 5204);
  f = createFont("AgencyFB-Reg-48", 20);
}

void draw() {
  background(255);
  
  fill(0);
  textFont(f);
  textAlign(CENTER);
  text(incomingMessage, width/2, height/2);
  
  Client client = server.available();
  if(client != null) {
    incomingMessage = client.readStringUntil('\n');
    println("Client says: " + incomingMessage);
    server.write(incomingMessage);
  }
}

void serverEvent(Server server, Client client) {
  incomingMessage = "A new client has connected: " + client.ip();
  println(incomingMessage);
}
