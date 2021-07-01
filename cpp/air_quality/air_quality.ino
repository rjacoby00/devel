// Ryan Jacoby

#define ESP8266

#include "Adafruit_PM25AQI.h"
#include <SoftwareSerial.h>

#include "config.h"

Adafruit_PM25AQI aqi = Adafruit_PM25AQI();
AdafruitIO_Feed *aqiFeed = io.feed("aqi");
SoftwareSerial swSer(13, 12);

double pm25_Chich[] = {0, 12, 35.4, 55.4, 150.4, 250.4, 350.4, 500.4};
double pm25_Clow[] = {0, 0, 12.1, 35.5, 55.5, 150.5, 250.5, 350.5};
int Ilow[] = {0, 51, 101, 151, 201, 301, 401};
int Ihigh[] = {50, 100, 150, 200, 300, 400, 500};

double avgpm25 = 0;  // Rolling average(data points fade away over time: this point is 1/2, last point is 1/4, before that is 1/8 and so on.)

void setup() {
  Serial.begin(115200);
  // while (!Serial) delay(10);

  delay(1000);

  swSer.begin(9600);

  if (! aqi.begin_UART(&swSer)) { // connect to the sensor over hardware serial
    // Serial.println("Could not find PM 2.5 sensor!");
    while (1) delay(10);
  }

  Serial.println("PM25 found!");

  io.connect();
  Serial.println("IO Connected!");
  Serial.println(io.statusText());
}

void loop() {
  PM25_AQI_Data data;

  io.run();
  
  if (! aqi.read(&data)) {
    Serial.println(-1);
    delay(500);  // try again in a bit!
    return;
  }
  
  if(avgpm25 == 0) avgpm25 = 2 * data.pm25_standard;
  else avgpm25 += data.pm25_standard;

  avgpm25 /= 2;

  // Serial.print(F("Rolling average ug/m^3: ")); Serial.println(avgpm25);

  int i = 0;
  for(i = 0; i < 7; i++) if(avgpm25 <= pm25_Chich[i]) break;
  int aqi = ((Ihigh[i - 1] - Ilow[i - 1]) / (pm25_Chich[i] - pm25_Clow[i]))*(avgpm25 - pm25_Clow[i]) + Ilow[i - 1] + 1;
  
  Serial.println(aqi);
  aqiFeed->save(aqi);

  digitalWrite(0, LOW);
  delay(100);
  digitalWrite(0, HIGH);

  delay(5000);
}