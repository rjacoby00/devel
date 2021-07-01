// Ryan Jacoby


int ENABLE = 8;
int DIRECTION = 7;
int STEP = 6;

void setup() {

    pinMode(ENABLE, OUTPUT);
    pinMode(DIRECTION, OUTPUT);
    pinMode(STEP, OUTPUT);
    pinMode(13, OUTPUT);

    Serial.begin(115200);
}

void loop() {

    for (int d_time = 50; d_time <= 1000; d_time += 50) {
        d_time = 400;

        Serial.println(d_time);

        digitalWrite(13, HIGH);

        digitalWrite(ENABLE, LOW);  // Enable driver
        digitalWrite(DIRECTION, LOW);  // Set direction in
        for (int i = 0; i < 400; i++) {
            digitalWrite(STEP, HIGH);
            delayMicroseconds(d_time);
            digitalWrite(STEP, LOW);
            delayMicroseconds(d_time);
        }
        digitalWrite(ENABLE, HIGH);  // Disable driver

        delay(1000);

        digitalWrite(13, LOW);

        digitalWrite(ENABLE, LOW);  // Enable driver
        digitalWrite(DIRECTION, HIGH);  // Set direction out
        for (int i = 0; i < 400; i++) {
            digitalWrite(STEP, HIGH);
            delayMicroseconds(d_time);
            digitalWrite(STEP, LOW);
            delayMicroseconds(d_time);
        }
        digitalWrite(ENABLE, HIGH);  // Disable driver

        delay(1000);
    }
}
