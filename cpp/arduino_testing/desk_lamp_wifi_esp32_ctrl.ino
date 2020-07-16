// Ryan Jacoby
#include <SPI.h>
#include <WiFiNINA.h>
#include <Adafruit_NeoPixel.h>

#ifdef __AVR__
#include <avr/power.h>
#endif

#include "arduino_secrets.h"
char ssid[] = SECRET_SSID;
char pass[] = SECRET_PASS; 

#define PIN 8
#define NUM_LEDS 30
#define BRIGHTNESS 50
#define SPIWIFI SPI
#define SPIWIFI_SS 10   
#define SPIWIFI_ACK 7
#define ESP32_RESETN 5   
#define ESP32_GPIO0 6

int led_status = 0;
int led_color_r = 0x00;
int led_color_g = 0x00;
int led_color_b = 0x00;
int led_color_w = 0xFF;

bool animating = false;
int animation_type = 0;

Adafruit_NeoPixel strip = Adafruit_NeoPixel(NUM_LEDS, PIN, NEO_GRBW + NEO_KHZ800);
WiFiServer server(80);   //Web server object. Will be listening in port 80 (default for HTTP)\

int status = WL_IDLE_STATUS;

byte neopix_gamma[] = {
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,
  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  1,  1,  1,  1,
  1,  1,  1,  1,  1,  1,  1,  1,  1,  2,  2,  2,  2,  2,  2,  2,
  2,  3,  3,  3,  3,  3,  3,  3,  4,  4,  4,  4,  4,  5,  5,  5,
  5,  6,  6,  6,  6,  7,  7,  7,  7,  8,  8,  8,  9,  9,  9, 10,
  10, 10, 11, 11, 11, 12, 12, 13, 13, 13, 14, 14, 15, 15, 16, 16,
  17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22, 23, 24, 24, 25,
  25, 26, 27, 27, 28, 29, 29, 30, 31, 32, 32, 33, 34, 35, 35, 36,
  37, 38, 39, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 50,
  51, 52, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 66, 67, 68,
  69, 70, 72, 73, 74, 75, 77, 78, 79, 81, 82, 83, 85, 86, 87, 89,
  90, 92, 93, 95, 96, 98, 99, 101, 102, 104, 105, 107, 109, 110, 112, 114,
  115, 117, 119, 120, 122, 124, 126, 127, 129, 131, 133, 135, 137, 138, 140, 142,
  144, 146, 148, 150, 152, 154, 156, 158, 160, 162, 164, 167, 169, 171, 173, 175,
  177, 180, 182, 184, 186, 189, 191, 193, 196, 198, 200, 203, 205, 208, 210, 213,
  215, 218, 220, 223, 225, 228, 231, 233, 236, 239, 241, 244, 247, 249, 252, 255
};


void setup() {
  Serial.begin(115200);

  attachInterrupt(digitalPinToInterrupt(2), actionHandler, RISING);

  WiFi.setPins(SPIWIFI_SS, SPIWIFI_ACK, ESP32_RESETN, ESP32_GPIO0, &SPIWIFI);
  if (WiFi.status() == WL_NO_MODULE) {
    Serial.println(F("Communication with WiFi module failed!"));
    // don't continue
    while (true);
  }

  {
  String fv = WiFi.firmwareVersion();
  if (fv < "1.0.0") {
    Serial.println(F("Please upgrade the firmware"));
  }
  }

  // attempt to connect to Wifi network:
  Serial.print(F("Attempting to connect to SSID: "));
  Serial.println(ssid);
  // Connect to WPA/WPA2 network. Change this line if using open or WEP network:
  do {
    status = WiFi.begin(ssid, pass);
    delay(100);     // wait until connection is ready!
  } while (status != WL_CONNECTED);
  
  Serial.println(F("Connected to wifi"));
  printWifiStatus();

  server.begin();

  // server.on("/action", actionHandler); //Associate the handler function to the path

  strip.setBrightness(BRIGHTNESS);
  strip.begin();
  strip.show();
  colorWipe(strip.Color(150, 0, 150, 5), 50);
}

void loop() {
  if (animating) {
    if (animation_type == 0) {
      colorWipe(strip.Color(led_color_r, led_color_g, led_color_b, led_color_w), 50);
      animating = false;
    } else if (animation_type == 1) {
      rainbowCycle(50);
      animating = true;
    }
  }
}

void actionHandler() { //Handler
  char message[100] = "Invalid/no device.  Usage: ?device={DEVICE}\0";
  char request[100] = "\0";
  int i = 0;

  WiFiClient client = server.available();
  
  if (client) {
    boolean currentLineIsBlank = true;
    while (client.connected()) {
      if (client.available()) {
        char c = client.read();
        if (i < 100)
          request[i] = c;
        i++;
        

        if (c == '\n' && currentLineIsBlank) {
          if (i < 100)
            request[i] = '\0';

          for (int i = 0; i < sizeof(request) - 4; i++) {
            if (request[i + 4] == ' ') {
              request[i + 4] = '\0';
              break;
            }
          }

          int argsOffset;
          for(argsOffset = 0; argsOffset < sizeof(request); argsOffset++) 
            if (request[argsOffset] == '?') break;

          Serial.println("\n\nRequest to parse:");
          Serial.println(request);
          Serial.println("End request dump");
          Serial.print("Get: ");
          Serial.println(checkGETRequest(request));
          Serial.print("Args offset: ");
          Serial.println(argsOffset);
          
          // PARSING CODE
          // For some reason they crash the Arduino when placed in fucntions

          // Device
          int deviceOffset, deviceSize = 0;
          for(deviceOffset = argsOffset; deviceOffset < sizeof(request) - 6; deviceOffset++) 
            if (request[deviceOffset] == 'd' && request[deviceOffset + 1] == 'e' && request[deviceOffset + 2] == 'v' && request[deviceOffset + 3] == 'i' && request[deviceOffset + 4] == 'c' && request[deviceOffset + 5] == 'e' && request[deviceOffset + 6] == '=') break;
          deviceOffset += 7;

          if (deviceOffset <= sizeof(request)) {
            for (deviceSize; deviceSize + deviceOffset < sizeof(request); deviceSize++) {
              if (request[deviceOffset + deviceSize] == '&') break;
            }
          }
          
          char device[deviceSize];

          for (int i = 0; i < deviceSize; i++)
            device[i] = request[deviceOffset + i];
          device[sizeof(device)] = '\0';

          Serial.print("Device: ");
          Serial.println(device);
          if (strcmp(device, "neopixels") == 0) Serial.println("NEOPIXELS SELECTED");
          Serial.print("Mem free: ");
          Serial.println(freeRam());

          // Color
          int colorOffset, colorSize = 0;
          for(colorOffset = argsOffset; colorOffset < sizeof(request) - 5; colorOffset++) 
            if (request[colorOffset] == 'c' && request[colorOffset + 1] == 'o' && request[colorOffset + 2] == 'l' && request[colorOffset + 3] == 'o' && request[colorOffset + 4] == 'r' && request[colorOffset + 5] == '=') break;
          colorOffset += 6;

          if (colorOffset <= sizeof(request)) {
            for (colorSize; colorSize + colorOffset < sizeof(request); colorSize++) {
              if (request[colorOffset + colorSize] == '&') break;
            }
          }
          
          char color[colorSize];

          for (int i = 0; i < colorSize; i++)
            color[i] = request[colorOffset + i];
          color[sizeof(color)] = '\0';

          Serial.print("Color: ");
          Serial.println(color);
          Serial.print("Device: ");
          Serial.println(device);
          Serial.print("Mem free: ");
          Serial.println(freeRam());
          
          // Action
          int actionOffset, actionSize = 0;
          for(actionOffset = argsOffset; actionOffset < sizeof(request) - 6; actionOffset++) 
            if (request[actionOffset] == 'a' && request[actionOffset + 1] == 'c' && request[actionOffset + 2] == 't' && request[actionOffset + 3] == 'i' && request[actionOffset + 4] == 'o' && request[actionOffset + 5] == 'n' && request[actionOffset + 6] == '=') break;
          actionOffset += 7;

          if (actionOffset <= sizeof(request)) {
            for (actionSize; actionSize + actionOffset < sizeof(request); actionSize++) {
              if (request[actionOffset + actionSize] == '&') break;
            }
          }
          
          char action[actionSize];

          for (int i = 0; i < actionSize; i++)
            action[i] = request[actionOffset + i];
          action[sizeof(action)] = '\0';

          Serial.print("Action: ");
          Serial.println(action);
          Serial.print("Device: ");
          Serial.println(device);
          Serial.print("Mem free: ");
          Serial.println(freeRam());

          // END PARSING CODE

          Serial.print("Mem free: ");
          Serial.println(freeRam());

          Serial.print("Device: ");
          Serial.println(device);

          if (strcmp(device, "neopixels") == 0) {
            Serial.println("DEVICE IS NEOPIXELS");
            if (action == "on") {
              Serial.println("ACTION IS ON");
              if (led_color_w == 0 && led_color_r == 0 && led_color_g == 0 && led_color_b == 0) {
                led_color_w = 255;
              }
              animation_type = 1;
              animating = true;
              led_status = 1;
              strncpy(message, "on", 2);
              message[2] = '\0';
            } else if (action == "off") {
              Serial.println("ACTION IS OFF");
              led_color_w = 0;
              led_color_r = 0;
              led_color_g = 0;
              led_color_b = 0;
              animation_type = 0;
              animating = true;
              led_status = 0;
              strncpy(message, "off", 3);
              message[3] = '\0';
            } else if (action == "custom_color") {
              strncpy(message, "set to a custom color", 21);
              message[21] = '\0';
            } else if (action == "status") {
              message[0] = led_status;
              message[1] = '\0';
            } else if (action == "status_color") {
              strncpy(message, "#afafaf", 7);
              message[7] = '\0';
            } else {
              strncpy(message, "NeoPixels selected, no action", 29);
              message[29] = '\0';
            }
          } else {
            strncpy(message, "Invalid/no device.  Usage: ?device={DEVICE}", 44);
            message[44] = '\0';
          }
          

          client.println("HTTP/1.1 200 OK");
          client.println("Content-Type: text/plain");
          client.println("Connection: close");
          client.println();
          client.println(message);          

          break;
        }
        if (c == '\n') {
          currentLineIsBlank = true;
        } else if (c != '\r') {
          currentLineIsBlank = false;
        }
      }
    }

    delay(1);

    client.stop();
  }
}

// Functions for animations

void colorWipe(uint32_t c, uint8_t wait) {
  for (uint16_t i = 0; i < strip.numPixels(); i++) {
    strip.setPixelColor(i, c);
    strip.show();
    delay(wait);
  }
}

void dualColorWipe(uint32_t c1, uint32_t c2, uint8_t s1, uint8_t s2, uint8_t wait) {
  bool col1 = true;
  uint16_t goal = 0;
  for (uint16_t i = 0; i < strip.numPixels(); i++) {
    if(i >= goal) {
      if(col1) goal += s1;
      else goal += s2;

      col1 = !col1;
    }
    
    if(col1) strip.setPixelColor(i, c1);
    else strip.setPixelColor(i, c2);
    strip.show();
    delay(wait);
  }
}

void pulseWhite(uint8_t wait) {
  for (int j = 0; j < 256 ; j++) {
    for (uint16_t i = 0; i < strip.numPixels(); i++) {
      strip.setPixelColor(i, strip.Color(0, 0, 0, neopix_gamma[j] ) );
    }
    delay(wait);
    strip.show();
  }

  for (int j = 255; j >= 0 ; j--) {
    for (uint16_t i = 0; i < strip.numPixels(); i++) {
      strip.setPixelColor(i, strip.Color(0, 0, 0, neopix_gamma[j] ) );
    }
    delay(wait);
    strip.show();
  }
}


void rainbowFade2White(uint8_t wait, int rainbowLoops, int whiteLoops) {
  float fadeMax = 100.0;
  int fadeVal = 0;
  uint32_t wheelVal;
  int redVal, greenVal, blueVal;

  for (int k = 0 ; k < rainbowLoops ; k ++) {

    for (int j = 0; j < 256; j++) { // 5 cycles of all colors on wheel

      for (int i = 0; i < strip.numPixels(); i++) {

        wheelVal = Wheel(((i * 256 / strip.numPixels()) + j) & 255);

        redVal = red(wheelVal) * float(fadeVal / fadeMax);
        greenVal = green(wheelVal) * float(fadeVal / fadeMax);
        blueVal = blue(wheelVal) * float(fadeVal / fadeMax);

        strip.setPixelColor( i, strip.Color( redVal, greenVal, blueVal ) );

      }

      //First loop, fade in!
      if (k == 0 && fadeVal < fadeMax - 1) {
        fadeVal++;
      }

      //Last loop, fade out!
      else if (k == rainbowLoops - 1 && j > 255 - fadeMax ) {
        fadeVal--;
      }

      strip.show();
      delay(wait);
    }

  }



  delay(500);


  for (int k = 0 ; k < whiteLoops ; k ++) {

    for (int j = 0; j < 256 ; j++) {

      for (uint16_t i = 0; i < strip.numPixels(); i++) {
        strip.setPixelColor(i, strip.Color(0, 0, 0, neopix_gamma[j] ) );
      }
      strip.show();
    }

    delay(2000);
    for (int j = 255; j >= 0 ; j--) {

      for (uint16_t i = 0; i < strip.numPixels(); i++) {
        strip.setPixelColor(i, strip.Color(0, 0, 0, neopix_gamma[j] ) );
      }
      strip.show();
    }
  }

  delay(500);


}

void whiteOverRainbow(uint8_t wait, uint8_t whiteSpeed, uint8_t whiteLength ) {

  if (whiteLength >= strip.numPixels()) whiteLength = strip.numPixels() - 1;

  int head = whiteLength - 1;
  int tail = 0;

  int loops = 3;
  int loopNum = 0;

  static unsigned long lastTime = 0;


  while (true) {
    for (int j = 0; j < 256; j++) {
      for (uint16_t i = 0; i < strip.numPixels(); i++) {
        if ((i >= tail && i <= head) || (tail > head && i >= tail) || (tail > head && i <= head) ) {
          strip.setPixelColor(i, strip.Color(0, 0, 0, 255 ) );
        }
        else {
          strip.setPixelColor(i, Wheel(((i * 256 / strip.numPixels()) + j) & 255));
        }

      }

      if (millis() - lastTime > whiteSpeed) {
        head++;
        tail++;
        if (head == strip.numPixels()) {
          loopNum++;
        }
        lastTime = millis();
      }

      if (loopNum == loops) return;

      head %= strip.numPixels();
      tail %= strip.numPixels();
      strip.show();
      delay(wait);
    }
  }

}

void fullWhite() {

  for (uint16_t i = 0; i < strip.numPixels(); i++) {
    strip.setPixelColor(i, strip.Color(0, 0, 0, 255 ) );
  }
  strip.show();
}


// Slightly different, this makes the rainbow equally distributed throughout
void rainbowCycle(uint8_t wait) {
  uint16_t i, j;

  for (j = 0; j < 256 * 5; j++) { // 5 cycles of all colors on wheel
    for (i = 0; i < strip.numPixels(); i++) {
      strip.setPixelColor(i, Wheel(((i * 256 / strip.numPixels()) + j) & 255));
    }
    strip.show();
    delay(wait);
  }
}

void rainbow(uint8_t wait) {
  uint16_t i, j;

  for (j = 0; j < 256; j++) {
    for (i = 0; i < strip.numPixels(); i++) {
      strip.setPixelColor(i, Wheel((i + j) & 255));
    }
    strip.show();
    delay(wait);
  }
}

// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
uint32_t Wheel(byte WheelPos) {
  WheelPos = 255 - WheelPos;
  if (WheelPos < 85) {
    return strip.Color(255 - WheelPos * 3, 0, WheelPos * 3, 0);
  }
  if (WheelPos < 170) {
    WheelPos -= 85;
    return strip.Color(0, WheelPos * 3, 255 - WheelPos * 3, 0);
  }
  WheelPos -= 170;
  return strip.Color(WheelPos * 3, 255 - WheelPos * 3, 0, 0);
}

uint8_t red(uint32_t c) {
  return (c >> 16);
}
uint8_t green(uint32_t c) {
  return (c >> 8);
}
uint8_t blue(uint32_t c) {
  return (c);
}

uint8_t hexstrtoint(String chars) {
  int c = 0;
  uint8_t out = 0;
  uint8_t tempout = 0;
  while (c < 2) {
    if (chars.substring(c, c + 1) == "0") {
      tempout = 0;
    }
    else if (chars.substring(c, c + 1) == "1") {
      tempout = 1;
    }
    else if (chars.substring(c, c + 1) == "2") {
      tempout = 2;
    }
    else if (chars.substring(c, c + 1) == "3") {
      tempout = 3;
    }
    else if (chars.substring(c, c + 1) == "4") {
      tempout = 4;
    }
    else if (chars.substring(c, c + 1) == "5") {
      tempout = 5;
    }
    else if (chars.substring(c, c + 1) == "6") {
      tempout = 6;
    }
    else if (chars.substring(c, c + 1) == "7") {
      tempout = 7;
    }
    else if (chars.substring(c, c + 1) == "8") {
      tempout = 8;
    }
    else if (chars.substring(c, c + 1) == "9") {
      tempout = 9;
    }
    else if (chars.substring(c, c + 1) == "A") {
      tempout = 10;
    }
    else if (chars.substring(c, c + 1) == "B") {
      tempout = 11;
    }
    else if (chars.substring(c, c + 1) == "C") {
      tempout = 12;
    }
    else if (chars.substring(c, c + 1) == "D") {
      tempout = 13;
    }
    else if (chars.substring(c, c + 1) == "E") {
      tempout = 14;
    }
    else if (chars.substring(c, c + 1) == "F") {
      tempout = 15;
    }

    if (c == 0) {
      tempout = tempout * 16;
    }

    out += tempout;
    c++;
  }
  return out;
}

void printWifiStatus() {
  // print the SSID of the network you're attached to:
  Serial.print("SSID: ");
  Serial.println(WiFi.SSID());

  // print your board's IP address:
  IPAddress ip = WiFi.localIP();
  Serial.print("IP Address: ");
  Serial.println(ip);

  // print the received signal strength:
  long rssi = WiFi.RSSI();
  Serial.print("signal strength (RSSI):");
  Serial.print(rssi);
  Serial.println(" dBm");
}

boolean checkGETRequest(char a[]) {
  int i;
  for (i = 0; i < sizeof(a); i++) {
    if (a[i] == 'G') break;
  }
  return a[i + 1] == 'E' && a[i + 2] == 'T';
}

int freeRam () {
  extern int __heap_start, *__brkval;
  int v;
  return (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
}
